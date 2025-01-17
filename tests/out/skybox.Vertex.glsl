#version 310 es

precision highp float;

struct VertexOutput {
    vec4 position;
    vec3 uv;
};

uniform Data_block_0 {
    mat4x4 proj_inv;
    mat4x4 view;
} _group_0_binding_0;

layout(location = 0) out vec3 _vs2fs_location0;

void main() {
    uint vertex_index = uint(gl_VertexID);
    int tmp1_;
    int tmp2_;
    VertexOutput out1;
    tmp1_ = (int(vertex_index) / 2);
    tmp2_ = (int(vertex_index) & 1);
    vec4 _expr24 = vec4(((float(tmp1_) * 4.0) - 1.0), ((float(tmp2_) * 4.0) - 1.0), 0.0, 1.0);
    vec4 _expr50 = (_group_0_binding_0.proj_inv * _expr24);
    out1.uv = (transpose(mat3x3(vec3(_group_0_binding_0.view[0][0], _group_0_binding_0.view[0][1], _group_0_binding_0.view[0][2]), vec3(_group_0_binding_0.view[1][0], _group_0_binding_0.view[1][1], _group_0_binding_0.view[1][2]), vec3(_group_0_binding_0.view[2][0], _group_0_binding_0.view[2][1], _group_0_binding_0.view[2][2]))) * vec3(_expr50[0], _expr50[1], _expr50[2]));
    out1.position = _expr24;
    gl_Position = out1.position;
    _vs2fs_location0 = out1.uv;
    return;
}

