void main(void) {
    // Perform scaling and translation on texture coords to match geometry.
    // Use TextureMatrix 0 for alpha mask also...
    gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0;
    gl_TexCoord[1] = gl_TextureMatrix[0] * gl_MultiTexCoord1;

    // Transform the incoming vertex to model view projection matrix.
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}