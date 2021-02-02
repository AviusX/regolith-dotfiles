# Defined in - @ line 1
function l --wraps='exa -la' --wraps='exa -lah' --description 'alias l=exa -lah'
  exa -lah $argv;
end
