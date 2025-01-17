#version 310 es

precision highp float;

struct VertexOutput {
    vec2 uv;
    vec4 position;
};

layout(location = 0) in vec2 _p2vs_location0;
layout(location = 1) in vec2 _p2vs_location1;
layout(location = 0) out vec2 _vs2fs_location0;

void main() {
    vec2 pos = _p2vs_location0;
    vec2 uv1 = _p2vs_location1;
    VertexOutput out1;
    out1.uv = uv1;
    out1.position = vec4((1.2 * pos), 0.0, 1.0);
    _vs2fs_location0 = out1.uv;
    gl_Position = out1.position;
    return;
}

