precision mediump float;

attribute vec3 vPosition;
attribute vec3 vNormal;
attribute vec2 vTexCoord;

varying vec2 fTexCoord;
varying vec3 fPosition;
varying vec3 fNormal;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;
uniform mat4 MVPMatrix;

uniform mat3 normalMatrix;

void main() {
  
  gl_Position = MVPMatrix * vec4(vPosition, 1.0);

  fTexCoord = vTexCoord;
  fPosition = vec3(model * vec4(vPosition, 1.0));
  fNormal = normalMatrix * vNormal;
}
 