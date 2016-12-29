define confluent::propertyfile (
  $propertyhash,
  $component,
) {

  $keys = keys(merge({}, $propertyhash))

  each($keys) |$key| {
    ini_setting { "${component}_${key}":
      setting => $key,
      section => "",
      value   => $propertyhash[$key],
      path    => $name,
    }
  } 
}
