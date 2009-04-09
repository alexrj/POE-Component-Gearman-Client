use Test::More;
eval "use Test::Pod::Coverage 1.00";
plan skip_all => "Test::Pod::Coverage 1.00 required for testing POD coverage" if $@;
plan tests => 1;
pod_coverage_ok(
    'POE::Component::Gearman::Client', 
    { also_private => [ qr/^(?:[A-Z_]+|client|prefix)$/, qr/^t_/ ] }
);