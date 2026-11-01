#version 330

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <vanilla_tweaks:twinkling_stars/stars_vsh.glsl>

in vec3 Position;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    twinklingStars_main(gl_VertexID);
}
