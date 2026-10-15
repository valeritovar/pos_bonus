<?php

ob_start();

use Dompdf\Dompdf;
use Dompdf\Options;

// Configuración para imágenes remotas y otras opciones
$options = new Options();
$options->set('isRemoteEnabled', true);

$dompdf = new Dompdf($options);

/*=============================================
Traer info de la orden
=============================================*/

$url = "relations?rel=orders,clients,admins,offices&type=order,client,admin,office&linkTo=id_order&equalTo=".base64_decode($_GET["id_order"]);
$method = "GET";
$fields = array();

$getOrder = CurlController::request($url,$method,$fields);

if($getOrder->status == 200){

	$order = $getOrder->results[0];
	$order->products = [];

	/*=============================================
	Agregarle los productos a la orden
	=============================================*/

	$url = "relations?rel=sales,products&type=sale,product&linkTo=id_order_sale&equalTo=".base64_decode($_GET["id_order"]);
	$method = "GET";
	$fields = array();

	$getProducts = CurlController::request($url,$method,$fields);

	if($getProducts->status == 200){

		$products = $getProducts->results;

		foreach ($products as $key => $value) {
			
			array_push($order->products, $value);
			
		}
	}

	// echo '<pre>$order '; print_r($order); echo '</pre>';

}

?>

<!-- <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body { font-family: Arial, sans-serif; }
        h1 { color: #007BFF; }
        p { font-size: 14px; }
    </style>
</head>
<body>
    <h1>Factura de Compra</h1>
    <p>Gracias por tu compra. Este es tu comprobante en PDF.</p>
</body>
</html> -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Transacción #<?= $order->transaction_order ?></title>
    <style>
        body { font-family: Arial, sans-serif; font-size: 13px; }
        h1 { color: #611be4; }
        .section { margin-bottom: 20px; }
        .small { font-size: 12px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 6px; text-align: left; }
        th { background-color: #f0f0f0; }
        .right { text-align: right; }
        .bold { font-weight: bold; }
    </style>
</head>
<body>

<h1>Transacción #<?= $order->transaction_order ?></h1>

<div class="section">
    <strong>Sucursal:</strong> <?= $order->title_office ?><br>
    Dirección: <?= $order->address_office ?><br>
    Tel: <?= $order->phone_office ?><br>
    NIT: <?= $order->dni_office ?>
</div>

<div class="section">
    <strong>Cliente:</strong> <?= $order->name_client . ' ' . $order->surname_client ?><br>
    Tel: <?= $order->phone_client ?><br>
    Email: <?= $order->email_client ?><br>
    Dirección: <?= str_replace("+", " ", $order->address_client) ?>
</div>

<div class="section">
    <strong>Fecha:</strong> <?= $order->date_order ?><br>
    <strong>Método de pago:</strong> <?= $order->method_order ?><br>
    <strong>Estado:</strong> <?= $order->status_order ?>
</div>

<div class="section">
    <strong>Detalle de productos:</strong><br><br>
    <table>
        <thead>
            <tr>
                <th>Nombre Producto</th>
                <th>Cantidad</th>
                <th>IVA (%)</th>
                <th>Descuento (%)</th>
                <th>Subtotal</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($order->products as $p): ?>
            <tr>
                <td><?= urldecode($p->title_product) ?></td>
                <td><?= $p->qty_sale ?></td>
                <td><?= $p->tax_sale ?>%</td>
                <td><?= $p->discount_sale ?>%</td>
                <td class="right">$<?= number_format($p->subtotal_sale, 0, ',', '.') ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<div class="section">
    <table>
        <tr>
            <td class="right bold">Subtotal:</td>
            <td class="right">$<?= number_format($order->subtotal_order, 0, ',', '.') ?></td>
        </tr>
        <tr>
            <td class="right bold">Descuento total:</td>
            <td class="right">- $<?= number_format($order->discount_order, 0, ',', '.') ?></td>
        </tr>
        <tr>
            <td class="right bold">Impuestos:</td>
            <td class="right">$<?= number_format($order->tax_order, 0, ',', '.') ?></td>
        </tr>
        <tr>
            <td class="right bold">Total a pagar:</td>
            <td class="right bold">$<?= number_format($order->total_order, 0, ',', '.') ?></td>
        </tr>
    </table>
</div>

</body>
</html>

<?php

$html = ob_get_clean();

$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();

// Limpia el búfer de salida y establece el tipo de contenido
ob_clean();
header("Content-Type: application/pdf");

// Envía el archivo al navegador sin forzar la descarga
$dompdf->stream("archivo_generado.pdf", ["Attachment" => false]);

?>
