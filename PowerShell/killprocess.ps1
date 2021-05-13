$s = $args[0] # Første argument

foreach ($p in ps ){
    foreach ($name in $args){
        if ($p.name -eq $name) {
            kill -whatif $p.id
        }
    }
}