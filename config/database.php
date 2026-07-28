<?php

$env = [];
foreach (file(__DIR__ . '/../.env', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES) as $line) {
    if (str_starts_with(trim($line), '#') || !str_contains($line, '=')) {
        continue;
    }
    [$key, $value] = explode('=', $line, 2);
    $env[trim($key)] = trim($value);
}

$host= $env['DB_HOST'];
$username= $env['DB_USERNAME'];
$password= $env['DB_PASSWORD'];
$dbname= $env['DB_DATABASE'];
$port= $env['DB_PORT'];

echo "<pre>";
print_r([
    'host' => $host,
    'port' => $port,
    'database' => $dbname,
    'username' => $username,
]);
exit;

try {
    $pdo = new PDO(
        "mysql:host=$host;port=$port;dbname=$dbname;charset=utf8mb4",
        $username,
        $password
    );

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

?>