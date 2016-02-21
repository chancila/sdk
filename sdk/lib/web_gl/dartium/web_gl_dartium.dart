/**
 * 3D programming in the browser.
 */
library dart.dom.web_gl;

import 'dart:async';
import 'dart:collection';
import 'dart:_internal';
import 'dart:html';
import 'dart:html_common';
import 'dart:nativewrappers';
import 'dart:typed_data';
import 'dart:_blink' as _blink;
import 'dart:js' as js;
// DO NOT EDIT
// Auto-generated dart:web_gl library.





// FIXME: Can we make this private?
@Deprecated("Internal Use Only")
final web_glBlinkMap = {
  'ANGLEInstancedArrays': () => AngleInstancedArrays,
  'EXTBlendMinMax': () => ExtBlendMinMax,
  'EXTFragDepth': () => ExtFragDepth,
  'EXTShaderTextureLOD': () => ExtShaderTextureLod,
  'EXTTextureFilterAnisotropic': () => ExtTextureFilterAnisotropic,
  'EXTsRGB': () => EXTsRgb,
  'OESElementIndexUint': () => OesElementIndexUint,
  'OESStandardDerivatives': () => OesStandardDerivatives,
  'OESTextureFloat': () => OesTextureFloat,
  'OESTextureFloatLinear': () => OesTextureFloatLinear,
  'OESTextureHalfFloat': () => OesTextureHalfFloat,
  'OESTextureHalfFloatLinear': () => OesTextureHalfFloatLinear,
  'OESVertexArrayObject': () => OesVertexArrayObject,
  'WebGL2RenderingContext': () => RenderingContext2,
  'WebGL2RenderingContextBase': () => _WebGL2RenderingContextBase,
  'WebGLActiveInfo': () => ActiveInfo,
  'WebGLBuffer': () => Buffer,
  'WebGLCompressedTextureATC': () => CompressedTextureAtc,
  'WebGLCompressedTextureETC1': () => CompressedTextureETC1,
  'WebGLCompressedTexturePVRTC': () => CompressedTexturePvrtc,
  'WebGLCompressedTextureS3TC': () => CompressedTextureS3TC,
  'WebGLContextEvent': () => ContextEvent,
  'WebGLDebugRendererInfo': () => DebugRendererInfo,
  'WebGLDebugShaders': () => DebugShaders,
  'WebGLDepthTexture': () => DepthTexture,
  'WebGLDrawBuffers': () => DrawBuffers,
  'WebGLFramebuffer': () => Framebuffer,
  'WebGLLoseContext': () => LoseContext,
  'WebGLProgram': () => Program,
  'WebGLQuery': () => Query,
  'WebGLRenderbuffer': () => Renderbuffer,
  'WebGLRenderingContext': () => RenderingContext,
  'WebGLRenderingContextBase': () => _WebGLRenderingContextBase,
  'WebGLSampler': () => Sampler,
  'WebGLShader': () => Shader,
  'WebGLShaderPrecisionFormat': () => ShaderPrecisionFormat,
  'WebGLSync': () => Sync,
  'WebGLTexture': () => Texture,
  'WebGLTransformFeedback': () => TransformFeedback,
  'WebGLUniformLocation': () => UniformLocation,
  'WebGLVertexArrayObject': () => VertexArrayObject,
  'WebGLVertexArrayObjectOES': () => VertexArrayObjectOes,

};

// FIXME: Can we make this private?
@Deprecated("Internal Use Only")
final web_glBlinkFunctionMap = {
  'ANGLEInstancedArrays': () => AngleInstancedArrays.internalCreateAngleInstancedArrays,
  'EXTBlendMinMax': () => ExtBlendMinMax.internalCreateExtBlendMinMax,
  'EXTFragDepth': () => ExtFragDepth.internalCreateExtFragDepth,
  'EXTShaderTextureLOD': () => ExtShaderTextureLod.internalCreateExtShaderTextureLod,
  'EXTTextureFilterAnisotropic': () => ExtTextureFilterAnisotropic.internalCreateExtTextureFilterAnisotropic,
  'EXTsRGB': () => EXTsRgb.internalCreateEXTsRgb,
  'OESElementIndexUint': () => OesElementIndexUint.internalCreateOesElementIndexUint,
  'OESStandardDerivatives': () => OesStandardDerivatives.internalCreateOesStandardDerivatives,
  'OESTextureFloat': () => OesTextureFloat.internalCreateOesTextureFloat,
  'OESTextureFloatLinear': () => OesTextureFloatLinear.internalCreateOesTextureFloatLinear,
  'OESTextureHalfFloat': () => OesTextureHalfFloat.internalCreateOesTextureHalfFloat,
  'OESTextureHalfFloatLinear': () => OesTextureHalfFloatLinear.internalCreateOesTextureHalfFloatLinear,
  'OESVertexArrayObject': () => OesVertexArrayObject.internalCreateOesVertexArrayObject,
  'WebGL2RenderingContext': () => RenderingContext2.internalCreateRenderingContext2,
  'WebGL2RenderingContextBase': () => _WebGL2RenderingContextBase.internalCreate_WebGL2RenderingContextBase,
  'WebGLActiveInfo': () => ActiveInfo.internalCreateActiveInfo,
  'WebGLBuffer': () => Buffer.internalCreateBuffer,
  'WebGLCompressedTextureATC': () => CompressedTextureAtc.internalCreateCompressedTextureAtc,
  'WebGLCompressedTextureETC1': () => CompressedTextureETC1.internalCreateCompressedTextureETC1,
  'WebGLCompressedTexturePVRTC': () => CompressedTexturePvrtc.internalCreateCompressedTexturePvrtc,
  'WebGLCompressedTextureS3TC': () => CompressedTextureS3TC.internalCreateCompressedTextureS3TC,
  'WebGLContextEvent': () => ContextEvent.internalCreateContextEvent,
  'WebGLDebugRendererInfo': () => DebugRendererInfo.internalCreateDebugRendererInfo,
  'WebGLDebugShaders': () => DebugShaders.internalCreateDebugShaders,
  'WebGLDepthTexture': () => DepthTexture.internalCreateDepthTexture,
  'WebGLDrawBuffers': () => DrawBuffers.internalCreateDrawBuffers,
  'WebGLFramebuffer': () => Framebuffer.internalCreateFramebuffer,
  'WebGLLoseContext': () => LoseContext.internalCreateLoseContext,
  'WebGLProgram': () => Program.internalCreateProgram,
  'WebGLQuery': () => Query.internalCreateQuery,
  'WebGLRenderbuffer': () => Renderbuffer.internalCreateRenderbuffer,
  'WebGLRenderingContext': () => RenderingContext.internalCreateRenderingContext,
  'WebGLSampler': () => Sampler.internalCreateSampler,
  'WebGLShader': () => Shader.internalCreateShader,
  'WebGLShaderPrecisionFormat': () => ShaderPrecisionFormat.internalCreateShaderPrecisionFormat,
  'WebGLSync': () => Sync.internalCreateSync,
  'WebGLTexture': () => Texture.internalCreateTexture,
  'WebGLTransformFeedback': () => TransformFeedback.internalCreateTransformFeedback,
  'WebGLUniformLocation': () => UniformLocation.internalCreateUniformLocation,
  'WebGLVertexArrayObject': () => VertexArrayObject.internalCreateVertexArrayObject,
  'WebGLVertexArrayObjectOES': () => VertexArrayObjectOes.internalCreateVertexArrayObjectOes,

};
// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


const int ACTIVE_ATTRIBUTES = RenderingContext.ACTIVE_ATTRIBUTES;
const int ACTIVE_TEXTURE = RenderingContext.ACTIVE_TEXTURE;
const int ACTIVE_UNIFORMS = RenderingContext.ACTIVE_UNIFORMS;
const int ALIASED_LINE_WIDTH_RANGE = RenderingContext.ALIASED_LINE_WIDTH_RANGE;
const int ALIASED_POINT_SIZE_RANGE = RenderingContext.ALIASED_POINT_SIZE_RANGE;
const int ALPHA = RenderingContext.ALPHA;
const int ALPHA_BITS = RenderingContext.ALPHA_BITS;
const int ALWAYS = RenderingContext.ALWAYS;
const int ARRAY_BUFFER = RenderingContext.ARRAY_BUFFER;
const int ARRAY_BUFFER_BINDING = RenderingContext.ARRAY_BUFFER_BINDING;
const int ATTACHED_SHADERS = RenderingContext.ATTACHED_SHADERS;
const int BACK = RenderingContext.BACK;
const int BLEND = RenderingContext.BLEND;
const int BLEND_COLOR = RenderingContext.BLEND_COLOR;
const int BLEND_DST_ALPHA = RenderingContext.BLEND_DST_ALPHA;
const int BLEND_DST_RGB = RenderingContext.BLEND_DST_RGB;
const int BLEND_EQUATION = RenderingContext.BLEND_EQUATION;
const int BLEND_EQUATION_ALPHA = RenderingContext.BLEND_EQUATION_ALPHA;
const int BLEND_EQUATION_RGB = RenderingContext.BLEND_EQUATION_RGB;
const int BLEND_SRC_ALPHA = RenderingContext.BLEND_SRC_ALPHA;
const int BLEND_SRC_RGB = RenderingContext.BLEND_SRC_RGB;
const int BLUE_BITS = RenderingContext.BLUE_BITS;
const int BOOL = RenderingContext.BOOL;
const int BOOL_VEC2 = RenderingContext.BOOL_VEC2;
const int BOOL_VEC3 = RenderingContext.BOOL_VEC3;
const int BOOL_VEC4 = RenderingContext.BOOL_VEC4;
const int BROWSER_DEFAULT_WEBGL = RenderingContext.BROWSER_DEFAULT_WEBGL;
const int BUFFER_SIZE = RenderingContext.BUFFER_SIZE;
const int BUFFER_USAGE = RenderingContext.BUFFER_USAGE;
const int BYTE = RenderingContext.BYTE;
const int CCW = RenderingContext.CCW;
const int CLAMP_TO_EDGE = RenderingContext.CLAMP_TO_EDGE;
const int COLOR_ATTACHMENT0 = RenderingContext.COLOR_ATTACHMENT0;
const int COLOR_BUFFER_BIT = RenderingContext.COLOR_BUFFER_BIT;
const int COLOR_CLEAR_VALUE = RenderingContext.COLOR_CLEAR_VALUE;
const int COLOR_WRITEMASK = RenderingContext.COLOR_WRITEMASK;
const int COMPILE_STATUS = RenderingContext.COMPILE_STATUS;
const int COMPRESSED_TEXTURE_FORMATS = RenderingContext.COMPRESSED_TEXTURE_FORMATS;
const int CONSTANT_ALPHA = RenderingContext.CONSTANT_ALPHA;
const int CONSTANT_COLOR = RenderingContext.CONSTANT_COLOR;
const int CONTEXT_LOST_WEBGL = RenderingContext.CONTEXT_LOST_WEBGL;
const int CULL_FACE = RenderingContext.CULL_FACE;
const int CULL_FACE_MODE = RenderingContext.CULL_FACE_MODE;
const int CURRENT_PROGRAM = RenderingContext.CURRENT_PROGRAM;
const int CURRENT_VERTEX_ATTRIB = RenderingContext.CURRENT_VERTEX_ATTRIB;
const int CW = RenderingContext.CW;
const int DECR = RenderingContext.DECR;
const int DECR_WRAP = RenderingContext.DECR_WRAP;
const int DELETE_STATUS = RenderingContext.DELETE_STATUS;
const int DEPTH_ATTACHMENT = RenderingContext.DEPTH_ATTACHMENT;
const int DEPTH_BITS = RenderingContext.DEPTH_BITS;
const int DEPTH_BUFFER_BIT = RenderingContext.DEPTH_BUFFER_BIT;
const int DEPTH_CLEAR_VALUE = RenderingContext.DEPTH_CLEAR_VALUE;
const int DEPTH_COMPONENT = RenderingContext.DEPTH_COMPONENT;
const int DEPTH_COMPONENT16 = RenderingContext.DEPTH_COMPONENT16;
const int DEPTH_FUNC = RenderingContext.DEPTH_FUNC;
const int DEPTH_RANGE = RenderingContext.DEPTH_RANGE;
const int DEPTH_STENCIL = RenderingContext.DEPTH_STENCIL;
const int DEPTH_STENCIL_ATTACHMENT = RenderingContext.DEPTH_STENCIL_ATTACHMENT;
const int DEPTH_TEST = RenderingContext.DEPTH_TEST;
const int DEPTH_WRITEMASK = RenderingContext.DEPTH_WRITEMASK;
const int DITHER = RenderingContext.DITHER;
const int DONT_CARE = RenderingContext.DONT_CARE;
const int DST_ALPHA = RenderingContext.DST_ALPHA;
const int DST_COLOR = RenderingContext.DST_COLOR;
const int DYNAMIC_DRAW = RenderingContext.DYNAMIC_DRAW;
const int ELEMENT_ARRAY_BUFFER = RenderingContext.ELEMENT_ARRAY_BUFFER;
const int ELEMENT_ARRAY_BUFFER_BINDING = RenderingContext.ELEMENT_ARRAY_BUFFER_BINDING;
const int EQUAL = RenderingContext.EQUAL;
const int FASTEST = RenderingContext.FASTEST;
const int FLOAT = RenderingContext.FLOAT;
const int FLOAT_MAT2 = RenderingContext.FLOAT_MAT2;
const int FLOAT_MAT3 = RenderingContext.FLOAT_MAT3;
const int FLOAT_MAT4 = RenderingContext.FLOAT_MAT4;
const int FLOAT_VEC2 = RenderingContext.FLOAT_VEC2;
const int FLOAT_VEC3 = RenderingContext.FLOAT_VEC3;
const int FLOAT_VEC4 = RenderingContext.FLOAT_VEC4;
const int FRAGMENT_SHADER = RenderingContext.FRAGMENT_SHADER;
const int FRAMEBUFFER = RenderingContext.FRAMEBUFFER;
const int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
const int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
const int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
const int FRAMEBUFFER_BINDING = RenderingContext.FRAMEBUFFER_BINDING;
const int FRAMEBUFFER_COMPLETE = RenderingContext.FRAMEBUFFER_COMPLETE;
const int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = RenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
const int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = RenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
const int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = RenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
const int FRAMEBUFFER_UNSUPPORTED = RenderingContext.FRAMEBUFFER_UNSUPPORTED;
const int FRONT = RenderingContext.FRONT;
const int FRONT_AND_BACK = RenderingContext.FRONT_AND_BACK;
const int FRONT_FACE = RenderingContext.FRONT_FACE;
const int FUNC_ADD = RenderingContext.FUNC_ADD;
const int FUNC_REVERSE_SUBTRACT = RenderingContext.FUNC_REVERSE_SUBTRACT;
const int FUNC_SUBTRACT = RenderingContext.FUNC_SUBTRACT;
const int GENERATE_MIPMAP_HINT = RenderingContext.GENERATE_MIPMAP_HINT;
const int GEQUAL = RenderingContext.GEQUAL;
const int GREATER = RenderingContext.GREATER;
const int GREEN_BITS = RenderingContext.GREEN_BITS;
const int HALF_FLOAT_OES = OesTextureHalfFloat.HALF_FLOAT_OES;
const int HIGH_FLOAT = RenderingContext.HIGH_FLOAT;
const int HIGH_INT = RenderingContext.HIGH_INT;
const int INCR = RenderingContext.INCR;
const int INCR_WRAP = RenderingContext.INCR_WRAP;
const int INT = RenderingContext.INT;
const int INT_VEC2 = RenderingContext.INT_VEC2;
const int INT_VEC3 = RenderingContext.INT_VEC3;
const int INT_VEC4 = RenderingContext.INT_VEC4;
const int INVALID_ENUM = RenderingContext.INVALID_ENUM;
const int INVALID_FRAMEBUFFER_OPERATION = RenderingContext.INVALID_FRAMEBUFFER_OPERATION;
const int INVALID_OPERATION = RenderingContext.INVALID_OPERATION;
const int INVALID_VALUE = RenderingContext.INVALID_VALUE;
const int INVERT = RenderingContext.INVERT;
const int KEEP = RenderingContext.KEEP;
const int LEQUAL = RenderingContext.LEQUAL;
const int LESS = RenderingContext.LESS;
const int LINEAR = RenderingContext.LINEAR;
const int LINEAR_MIPMAP_LINEAR = RenderingContext.LINEAR_MIPMAP_LINEAR;
const int LINEAR_MIPMAP_NEAREST = RenderingContext.LINEAR_MIPMAP_NEAREST;
const int LINES = RenderingContext.LINES;
const int LINE_LOOP = RenderingContext.LINE_LOOP;
const int LINE_STRIP = RenderingContext.LINE_STRIP;
const int LINE_WIDTH = RenderingContext.LINE_WIDTH;
const int LINK_STATUS = RenderingContext.LINK_STATUS;
const int LOW_FLOAT = RenderingContext.LOW_FLOAT;
const int LOW_INT = RenderingContext.LOW_INT;
const int LUMINANCE = RenderingContext.LUMINANCE;
const int LUMINANCE_ALPHA = RenderingContext.LUMINANCE_ALPHA;
const int MAX_COMBINED_TEXTURE_IMAGE_UNITS = RenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS;
const int MAX_CUBE_MAP_TEXTURE_SIZE = RenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE;
const int MAX_FRAGMENT_UNIFORM_VECTORS = RenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS;
const int MAX_RENDERBUFFER_SIZE = RenderingContext.MAX_RENDERBUFFER_SIZE;
const int MAX_TEXTURE_IMAGE_UNITS = RenderingContext.MAX_TEXTURE_IMAGE_UNITS;
const int MAX_TEXTURE_SIZE = RenderingContext.MAX_TEXTURE_SIZE;
const int MAX_VARYING_VECTORS = RenderingContext.MAX_VARYING_VECTORS;
const int MAX_VERTEX_ATTRIBS = RenderingContext.MAX_VERTEX_ATTRIBS;
const int MAX_VERTEX_TEXTURE_IMAGE_UNITS = RenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS;
const int MAX_VERTEX_UNIFORM_VECTORS = RenderingContext.MAX_VERTEX_UNIFORM_VECTORS;
const int MAX_VIEWPORT_DIMS = RenderingContext.MAX_VIEWPORT_DIMS;
const int MEDIUM_FLOAT = RenderingContext.MEDIUM_FLOAT;
const int MEDIUM_INT = RenderingContext.MEDIUM_INT;
const int MIRRORED_REPEAT = RenderingContext.MIRRORED_REPEAT;
const int NEAREST = RenderingContext.NEAREST;
const int NEAREST_MIPMAP_LINEAR = RenderingContext.NEAREST_MIPMAP_LINEAR;
const int NEAREST_MIPMAP_NEAREST = RenderingContext.NEAREST_MIPMAP_NEAREST;
const int NEVER = RenderingContext.NEVER;
const int NICEST = RenderingContext.NICEST;
const int NONE = RenderingContext.NONE;
const int NOTEQUAL = RenderingContext.NOTEQUAL;
const int NO_ERROR = RenderingContext.NO_ERROR;
const int ONE = RenderingContext.ONE;
const int ONE_MINUS_CONSTANT_ALPHA = RenderingContext.ONE_MINUS_CONSTANT_ALPHA;
const int ONE_MINUS_CONSTANT_COLOR = RenderingContext.ONE_MINUS_CONSTANT_COLOR;
const int ONE_MINUS_DST_ALPHA = RenderingContext.ONE_MINUS_DST_ALPHA;
const int ONE_MINUS_DST_COLOR = RenderingContext.ONE_MINUS_DST_COLOR;
const int ONE_MINUS_SRC_ALPHA = RenderingContext.ONE_MINUS_SRC_ALPHA;
const int ONE_MINUS_SRC_COLOR = RenderingContext.ONE_MINUS_SRC_COLOR;
const int OUT_OF_MEMORY = RenderingContext.OUT_OF_MEMORY;
const int PACK_ALIGNMENT = RenderingContext.PACK_ALIGNMENT;
const int POINTS = RenderingContext.POINTS;
const int POLYGON_OFFSET_FACTOR = RenderingContext.POLYGON_OFFSET_FACTOR;
const int POLYGON_OFFSET_FILL = RenderingContext.POLYGON_OFFSET_FILL;
const int POLYGON_OFFSET_UNITS = RenderingContext.POLYGON_OFFSET_UNITS;
const int RED_BITS = RenderingContext.RED_BITS;
const int RENDERBUFFER = RenderingContext.RENDERBUFFER;
const int RENDERBUFFER_ALPHA_SIZE = RenderingContext.RENDERBUFFER_ALPHA_SIZE;
const int RENDERBUFFER_BINDING = RenderingContext.RENDERBUFFER_BINDING;
const int RENDERBUFFER_BLUE_SIZE = RenderingContext.RENDERBUFFER_BLUE_SIZE;
const int RENDERBUFFER_DEPTH_SIZE = RenderingContext.RENDERBUFFER_DEPTH_SIZE;
const int RENDERBUFFER_GREEN_SIZE = RenderingContext.RENDERBUFFER_GREEN_SIZE;
const int RENDERBUFFER_HEIGHT = RenderingContext.RENDERBUFFER_HEIGHT;
const int RENDERBUFFER_INTERNAL_FORMAT = RenderingContext.RENDERBUFFER_INTERNAL_FORMAT;
const int RENDERBUFFER_RED_SIZE = RenderingContext.RENDERBUFFER_RED_SIZE;
const int RENDERBUFFER_STENCIL_SIZE = RenderingContext.RENDERBUFFER_STENCIL_SIZE;
const int RENDERBUFFER_WIDTH = RenderingContext.RENDERBUFFER_WIDTH;
const int RENDERER = RenderingContext.RENDERER;
const int REPEAT = RenderingContext.REPEAT;
const int REPLACE = RenderingContext.REPLACE;
const int RGB = RenderingContext.RGB;
const int RGB565 = RenderingContext.RGB565;
const int RGB5_A1 = RenderingContext.RGB5_A1;
const int RGBA = RenderingContext.RGBA;
const int RGBA4 = RenderingContext.RGBA4;
const int SAMPLER_2D = RenderingContext.SAMPLER_2D;
const int SAMPLER_CUBE = RenderingContext.SAMPLER_CUBE;
const int SAMPLES = RenderingContext.SAMPLES;
const int SAMPLE_ALPHA_TO_COVERAGE = RenderingContext.SAMPLE_ALPHA_TO_COVERAGE;
const int SAMPLE_BUFFERS = RenderingContext.SAMPLE_BUFFERS;
const int SAMPLE_COVERAGE = RenderingContext.SAMPLE_COVERAGE;
const int SAMPLE_COVERAGE_INVERT = RenderingContext.SAMPLE_COVERAGE_INVERT;
const int SAMPLE_COVERAGE_VALUE = RenderingContext.SAMPLE_COVERAGE_VALUE;
const int SCISSOR_BOX = RenderingContext.SCISSOR_BOX;
const int SCISSOR_TEST = RenderingContext.SCISSOR_TEST;
const int SHADER_TYPE = RenderingContext.SHADER_TYPE;
const int SHADING_LANGUAGE_VERSION = RenderingContext.SHADING_LANGUAGE_VERSION;
const int SHORT = RenderingContext.SHORT;
const int SRC_ALPHA = RenderingContext.SRC_ALPHA;
const int SRC_ALPHA_SATURATE = RenderingContext.SRC_ALPHA_SATURATE;
const int SRC_COLOR = RenderingContext.SRC_COLOR;
const int STATIC_DRAW = RenderingContext.STATIC_DRAW;
const int STENCIL_ATTACHMENT = RenderingContext.STENCIL_ATTACHMENT;
const int STENCIL_BACK_FAIL = RenderingContext.STENCIL_BACK_FAIL;
const int STENCIL_BACK_FUNC = RenderingContext.STENCIL_BACK_FUNC;
const int STENCIL_BACK_PASS_DEPTH_FAIL = RenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL;
const int STENCIL_BACK_PASS_DEPTH_PASS = RenderingContext.STENCIL_BACK_PASS_DEPTH_PASS;
const int STENCIL_BACK_REF = RenderingContext.STENCIL_BACK_REF;
const int STENCIL_BACK_VALUE_MASK = RenderingContext.STENCIL_BACK_VALUE_MASK;
const int STENCIL_BACK_WRITEMASK = RenderingContext.STENCIL_BACK_WRITEMASK;
const int STENCIL_BITS = RenderingContext.STENCIL_BITS;
const int STENCIL_BUFFER_BIT = RenderingContext.STENCIL_BUFFER_BIT;
const int STENCIL_CLEAR_VALUE = RenderingContext.STENCIL_CLEAR_VALUE;
const int STENCIL_FAIL = RenderingContext.STENCIL_FAIL;
const int STENCIL_FUNC = RenderingContext.STENCIL_FUNC;
const int STENCIL_INDEX = RenderingContext.STENCIL_INDEX;
const int STENCIL_INDEX8 = RenderingContext.STENCIL_INDEX8;
const int STENCIL_PASS_DEPTH_FAIL = RenderingContext.STENCIL_PASS_DEPTH_FAIL;
const int STENCIL_PASS_DEPTH_PASS = RenderingContext.STENCIL_PASS_DEPTH_PASS;
const int STENCIL_REF = RenderingContext.STENCIL_REF;
const int STENCIL_TEST = RenderingContext.STENCIL_TEST;
const int STENCIL_VALUE_MASK = RenderingContext.STENCIL_VALUE_MASK;
const int STENCIL_WRITEMASK = RenderingContext.STENCIL_WRITEMASK;
const int STREAM_DRAW = RenderingContext.STREAM_DRAW;
const int SUBPIXEL_BITS = RenderingContext.SUBPIXEL_BITS;
const int TEXTURE = RenderingContext.TEXTURE;
const int TEXTURE0 = RenderingContext.TEXTURE0;
const int TEXTURE1 = RenderingContext.TEXTURE1;
const int TEXTURE10 = RenderingContext.TEXTURE10;
const int TEXTURE11 = RenderingContext.TEXTURE11;
const int TEXTURE12 = RenderingContext.TEXTURE12;
const int TEXTURE13 = RenderingContext.TEXTURE13;
const int TEXTURE14 = RenderingContext.TEXTURE14;
const int TEXTURE15 = RenderingContext.TEXTURE15;
const int TEXTURE16 = RenderingContext.TEXTURE16;
const int TEXTURE17 = RenderingContext.TEXTURE17;
const int TEXTURE18 = RenderingContext.TEXTURE18;
const int TEXTURE19 = RenderingContext.TEXTURE19;
const int TEXTURE2 = RenderingContext.TEXTURE2;
const int TEXTURE20 = RenderingContext.TEXTURE20;
const int TEXTURE21 = RenderingContext.TEXTURE21;
const int TEXTURE22 = RenderingContext.TEXTURE22;
const int TEXTURE23 = RenderingContext.TEXTURE23;
const int TEXTURE24 = RenderingContext.TEXTURE24;
const int TEXTURE25 = RenderingContext.TEXTURE25;
const int TEXTURE26 = RenderingContext.TEXTURE26;
const int TEXTURE27 = RenderingContext.TEXTURE27;
const int TEXTURE28 = RenderingContext.TEXTURE28;
const int TEXTURE29 = RenderingContext.TEXTURE29;
const int TEXTURE3 = RenderingContext.TEXTURE3;
const int TEXTURE30 = RenderingContext.TEXTURE30;
const int TEXTURE31 = RenderingContext.TEXTURE31;
const int TEXTURE4 = RenderingContext.TEXTURE4;
const int TEXTURE5 = RenderingContext.TEXTURE5;
const int TEXTURE6 = RenderingContext.TEXTURE6;
const int TEXTURE7 = RenderingContext.TEXTURE7;
const int TEXTURE8 = RenderingContext.TEXTURE8;
const int TEXTURE9 = RenderingContext.TEXTURE9;
const int TEXTURE_2D = RenderingContext.TEXTURE_2D;
const int TEXTURE_BINDING_2D = RenderingContext.TEXTURE_BINDING_2D;
const int TEXTURE_BINDING_CUBE_MAP = RenderingContext.TEXTURE_BINDING_CUBE_MAP;
const int TEXTURE_CUBE_MAP = RenderingContext.TEXTURE_CUBE_MAP;
const int TEXTURE_CUBE_MAP_NEGATIVE_X = RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X;
const int TEXTURE_CUBE_MAP_NEGATIVE_Y = RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y;
const int TEXTURE_CUBE_MAP_NEGATIVE_Z = RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z;
const int TEXTURE_CUBE_MAP_POSITIVE_X = RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X;
const int TEXTURE_CUBE_MAP_POSITIVE_Y = RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y;
const int TEXTURE_CUBE_MAP_POSITIVE_Z = RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z;
const int TEXTURE_MAG_FILTER = RenderingContext.TEXTURE_MAG_FILTER;
const int TEXTURE_MIN_FILTER = RenderingContext.TEXTURE_MIN_FILTER;
const int TEXTURE_WRAP_S = RenderingContext.TEXTURE_WRAP_S;
const int TEXTURE_WRAP_T = RenderingContext.TEXTURE_WRAP_T;
const int TRIANGLES = RenderingContext.TRIANGLES;
const int TRIANGLE_FAN = RenderingContext.TRIANGLE_FAN;
const int TRIANGLE_STRIP = RenderingContext.TRIANGLE_STRIP;
const int UNPACK_ALIGNMENT = RenderingContext.UNPACK_ALIGNMENT;
const int UNPACK_COLORSPACE_CONVERSION_WEBGL = RenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL;
const int UNPACK_FLIP_Y_WEBGL = RenderingContext.UNPACK_FLIP_Y_WEBGL;
const int UNPACK_PREMULTIPLY_ALPHA_WEBGL = RenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL;
const int UNSIGNED_BYTE = RenderingContext.UNSIGNED_BYTE;
const int UNSIGNED_INT = RenderingContext.UNSIGNED_INT;
const int UNSIGNED_SHORT = RenderingContext.UNSIGNED_SHORT;
const int UNSIGNED_SHORT_4_4_4_4 = RenderingContext.UNSIGNED_SHORT_4_4_4_4;
const int UNSIGNED_SHORT_5_5_5_1 = RenderingContext.UNSIGNED_SHORT_5_5_5_1;
const int UNSIGNED_SHORT_5_6_5 = RenderingContext.UNSIGNED_SHORT_5_6_5;
const int VALIDATE_STATUS = RenderingContext.VALIDATE_STATUS;
const int VENDOR = RenderingContext.VENDOR;
const int VERSION = RenderingContext.VERSION;
const int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = RenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
const int VERTEX_ATTRIB_ARRAY_ENABLED = RenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED;
const int VERTEX_ATTRIB_ARRAY_NORMALIZED = RenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED;
const int VERTEX_ATTRIB_ARRAY_POINTER = RenderingContext.VERTEX_ATTRIB_ARRAY_POINTER;
const int VERTEX_ATTRIB_ARRAY_SIZE = RenderingContext.VERTEX_ATTRIB_ARRAY_SIZE;
const int VERTEX_ATTRIB_ARRAY_STRIDE = RenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE;
const int VERTEX_ATTRIB_ARRAY_TYPE = RenderingContext.VERTEX_ATTRIB_ARRAY_TYPE;
const int VERTEX_SHADER = RenderingContext.VERTEX_SHADER;
const int VIEWPORT = RenderingContext.VIEWPORT;
const int ZERO = RenderingContext.ZERO;
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLActiveInfo')
@Unstable()
class ActiveInfo extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory ActiveInfo._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static ActiveInfo internalCreateActiveInfo() {
    return new ActiveInfo._internalWrap();
  }

  factory ActiveInfo._internalWrap() {
    return new ActiveInfo.internal_();
  }

  @Deprecated("Internal Use Only")
  ActiveInfo.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLActiveInfo.name')
  @DocsEditable()
  String get name => _blink.BlinkWebGLActiveInfo.instance.name_Getter_(unwrap_jso(this));
  
  @DomName('WebGLActiveInfo.size')
  @DocsEditable()
  int get size => _blink.BlinkWebGLActiveInfo.instance.size_Getter_(unwrap_jso(this));
  
  @DomName('WebGLActiveInfo.type')
  @DocsEditable()
  int get type => _blink.BlinkWebGLActiveInfo.instance.type_Getter_(unwrap_jso(this));
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('ANGLEInstancedArrays')
@Experimental() // untriaged
class AngleInstancedArrays extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory AngleInstancedArrays._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static AngleInstancedArrays internalCreateAngleInstancedArrays() {
    return new AngleInstancedArrays._internalWrap();
  }

  factory AngleInstancedArrays._internalWrap() {
    return new AngleInstancedArrays.internal_();
  }

  @Deprecated("Internal Use Only")
  AngleInstancedArrays.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('ANGLEInstancedArrays.VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 0x88FE;

  @DomName('ANGLEInstancedArrays.drawArraysInstancedANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  void drawArraysInstancedAngle(int mode, int first, int count, int primcount) => _blink.BlinkANGLEInstancedArrays.instance.drawArraysInstancedANGLE_Callback_4_(unwrap_jso(this), mode, first, count, primcount);
  
  @DomName('ANGLEInstancedArrays.drawElementsInstancedANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  void drawElementsInstancedAngle(int mode, int count, int type, int offset, int primcount) => _blink.BlinkANGLEInstancedArrays.instance.drawElementsInstancedANGLE_Callback_5_(unwrap_jso(this), mode, count, type, offset, primcount);
  
  @DomName('ANGLEInstancedArrays.vertexAttribDivisorANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  void vertexAttribDivisorAngle(int index, int divisor) => _blink.BlinkANGLEInstancedArrays.instance.vertexAttribDivisorANGLE_Callback_2_(unwrap_jso(this), index, divisor);
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLBuffer')
@Unstable()
class Buffer extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Buffer._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Buffer internalCreateBuffer() {
    return new Buffer._internalWrap();
  }

  factory Buffer._internalWrap() {
    return new Buffer.internal_();
  }

  @Deprecated("Internal Use Only")
  Buffer.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLCompressedTextureATC')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_atc/
@Experimental()
class CompressedTextureAtc extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory CompressedTextureAtc._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static CompressedTextureAtc internalCreateCompressedTextureAtc() {
    return new CompressedTextureAtc._internalWrap();
  }

  factory CompressedTextureAtc._internalWrap() {
    return new CompressedTextureAtc.internal_();
  }

  @Deprecated("Internal Use Only")
  CompressedTextureAtc.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLCompressedTextureATC.COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL')
  @DocsEditable()
  static const int COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL = 0x8C93;

  @DomName('WebGLCompressedTextureATC.COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL')
  @DocsEditable()
  static const int COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL = 0x87EE;

  @DomName('WebGLCompressedTextureATC.COMPRESSED_RGB_ATC_WEBGL')
  @DocsEditable()
  static const int COMPRESSED_RGB_ATC_WEBGL = 0x8C92;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLCompressedTextureETC1')
@Experimental() // untriaged
class CompressedTextureETC1 extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory CompressedTextureETC1._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static CompressedTextureETC1 internalCreateCompressedTextureETC1() {
    return new CompressedTextureETC1._internalWrap();
  }

  factory CompressedTextureETC1._internalWrap() {
    return new CompressedTextureETC1.internal_();
  }

  @Deprecated("Internal Use Only")
  CompressedTextureETC1.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLCompressedTextureETC1.COMPRESSED_RGB_ETC1_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGB_ETC1_WEBGL = 0x8D64;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLCompressedTexturePVRTC')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_pvrtc/
@Experimental() // experimental
class CompressedTexturePvrtc extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory CompressedTexturePvrtc._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static CompressedTexturePvrtc internalCreateCompressedTexturePvrtc() {
    return new CompressedTexturePvrtc._internalWrap();
  }

  factory CompressedTexturePvrtc._internalWrap() {
    return new CompressedTexturePvrtc.internal_();
  }

  @Deprecated("Internal Use Only")
  CompressedTexturePvrtc.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGBA_PVRTC_2BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = 0x8C03;

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGBA_PVRTC_4BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 0x8C02;

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGB_PVRTC_2BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGB_PVRTC_2BPPV1_IMG = 0x8C01;

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGB_PVRTC_4BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 0x8C00;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLCompressedTextureS3TC')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_s3tc/
@Experimental() // experimental
class CompressedTextureS3TC extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory CompressedTextureS3TC._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static CompressedTextureS3TC internalCreateCompressedTextureS3TC() {
    return new CompressedTextureS3TC._internalWrap();
  }

  factory CompressedTextureS3TC._internalWrap() {
    return new CompressedTextureS3TC.internal_();
  }

  @Deprecated("Internal Use Only")
  CompressedTextureS3TC.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGBA_S3TC_DXT1_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGBA_S3TC_DXT3_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2;

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGBA_S3TC_DXT5_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGB_S3TC_DXT1_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLContextEvent')
@Unstable()
class ContextEvent extends Event {
  // To suppress missing implicit constructor warnings.
  factory ContextEvent._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLContextEvent.WebGLContextEvent')
  @DocsEditable()
  factory ContextEvent(String type, [Map eventInit]) {
    if (eventInit != null) {
      var eventInit_1 = convertDartToNative_Dictionary(eventInit);
      return wrap_jso(_blink.BlinkWebGLContextEvent.instance.constructorCallback_2_(type, eventInit_1));
    }
    return wrap_jso(_blink.BlinkWebGLContextEvent.instance.constructorCallback_1_(type));
  }


  @Deprecated("Internal Use Only")
  static ContextEvent internalCreateContextEvent() {
    return new ContextEvent._internalWrap();
  }

  external factory ContextEvent._internalWrap();

  @Deprecated("Internal Use Only")
  ContextEvent.internal_() : super.internal_();


  @DomName('WebGLContextEvent.statusMessage')
  @DocsEditable()
  String get statusMessage => _blink.BlinkWebGLContextEvent.instance.statusMessage_Getter_(unwrap_jso(this));
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLDebugRendererInfo')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_debug_renderer_info/
@Experimental() // experimental
class DebugRendererInfo extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory DebugRendererInfo._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static DebugRendererInfo internalCreateDebugRendererInfo() {
    return new DebugRendererInfo._internalWrap();
  }

  factory DebugRendererInfo._internalWrap() {
    return new DebugRendererInfo.internal_();
  }

  @Deprecated("Internal Use Only")
  DebugRendererInfo.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLDebugRendererInfo.UNMASKED_RENDERER_WEBGL')
  @DocsEditable()
  static const int UNMASKED_RENDERER_WEBGL = 0x9246;

  @DomName('WebGLDebugRendererInfo.UNMASKED_VENDOR_WEBGL')
  @DocsEditable()
  static const int UNMASKED_VENDOR_WEBGL = 0x9245;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLDebugShaders')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_debug_shaders/
@Experimental() // experimental
class DebugShaders extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory DebugShaders._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static DebugShaders internalCreateDebugShaders() {
    return new DebugShaders._internalWrap();
  }

  factory DebugShaders._internalWrap() {
    return new DebugShaders.internal_();
  }

  @Deprecated("Internal Use Only")
  DebugShaders.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLDebugShaders.getTranslatedShaderSource')
  @DocsEditable()
  String getTranslatedShaderSource(Shader shader) => _blink.BlinkWebGLDebugShaders.instance.getTranslatedShaderSource_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLDepthTexture')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_depth_texture/
@Experimental() // experimental
class DepthTexture extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory DepthTexture._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static DepthTexture internalCreateDepthTexture() {
    return new DepthTexture._internalWrap();
  }

  factory DepthTexture._internalWrap() {
    return new DepthTexture.internal_();
  }

  @Deprecated("Internal Use Only")
  DepthTexture.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLDepthTexture.UNSIGNED_INT_24_8_WEBGL')
  @DocsEditable()
  static const int UNSIGNED_INT_24_8_WEBGL = 0x84FA;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLDrawBuffers')
// http://www.khronos.org/registry/webgl/specs/latest/
@Experimental() // stable
class DrawBuffers extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory DrawBuffers._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static DrawBuffers internalCreateDrawBuffers() {
    return new DrawBuffers._internalWrap();
  }

  factory DrawBuffers._internalWrap() {
    return new DrawBuffers.internal_();
  }

  @Deprecated("Internal Use Only")
  DrawBuffers.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT0_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT0_WEBGL = 0x8CE0;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT10_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT10_WEBGL = 0x8CEA;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT11_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT11_WEBGL = 0x8CEB;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT12_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT12_WEBGL = 0x8CEC;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT13_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT13_WEBGL = 0x8CED;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT14_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT14_WEBGL = 0x8CEE;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT15_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT15_WEBGL = 0x8CEF;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT1_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT1_WEBGL = 0x8CE1;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT2_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT2_WEBGL = 0x8CE2;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT3_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT3_WEBGL = 0x8CE3;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT4_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT4_WEBGL = 0x8CE4;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT5_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT5_WEBGL = 0x8CE5;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT6_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT6_WEBGL = 0x8CE6;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT7_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT7_WEBGL = 0x8CE7;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT8_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT8_WEBGL = 0x8CE8;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT9_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT9_WEBGL = 0x8CE9;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER0_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER0_WEBGL = 0x8825;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER10_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER10_WEBGL = 0x882F;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER11_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER11_WEBGL = 0x8830;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER12_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER12_WEBGL = 0x8831;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER13_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER13_WEBGL = 0x8832;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER14_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER14_WEBGL = 0x8833;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER15_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER15_WEBGL = 0x8834;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER1_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER1_WEBGL = 0x8826;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER2_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER2_WEBGL = 0x8827;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER3_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER3_WEBGL = 0x8828;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER4_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER4_WEBGL = 0x8829;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER5_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER5_WEBGL = 0x882A;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER6_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER6_WEBGL = 0x882B;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER7_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER7_WEBGL = 0x882C;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER8_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER8_WEBGL = 0x882D;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER9_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER9_WEBGL = 0x882E;

  @DomName('WebGLDrawBuffers.MAX_COLOR_ATTACHMENTS_WEBGL')
  @DocsEditable()
  static const int MAX_COLOR_ATTACHMENTS_WEBGL = 0x8CDF;

  @DomName('WebGLDrawBuffers.MAX_DRAW_BUFFERS_WEBGL')
  @DocsEditable()
  static const int MAX_DRAW_BUFFERS_WEBGL = 0x8824;

  @DomName('WebGLDrawBuffers.drawBuffersWEBGL')
  @DocsEditable()
  void drawBuffersWebgl(List<int> buffers) => _blink.BlinkWebGLDrawBuffers.instance.drawBuffersWEBGL_Callback_1_(unwrap_jso(this), buffers);
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('EXTsRGB')
@Experimental() // untriaged
class EXTsRgb extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory EXTsRgb._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static EXTsRgb internalCreateEXTsRgb() {
    return new EXTsRgb._internalWrap();
  }

  factory EXTsRgb._internalWrap() {
    return new EXTsRgb.internal_();
  }

  @Deprecated("Internal Use Only")
  EXTsRgb.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('EXTsRGB.FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = 0x8210;

  @DomName('EXTsRGB.SRGB8_ALPHA8_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB8_ALPHA8_EXT = 0x8C43;

  @DomName('EXTsRGB.SRGB_ALPHA_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB_ALPHA_EXT = 0x8C42;

  @DomName('EXTsRGB.SRGB_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB_EXT = 0x8C40;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('EXTBlendMinMax')
@Experimental() // untriaged
class ExtBlendMinMax extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory ExtBlendMinMax._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static ExtBlendMinMax internalCreateExtBlendMinMax() {
    return new ExtBlendMinMax._internalWrap();
  }

  factory ExtBlendMinMax._internalWrap() {
    return new ExtBlendMinMax.internal_();
  }

  @Deprecated("Internal Use Only")
  ExtBlendMinMax.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('EXTBlendMinMax.MAX_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_EXT = 0x8008;

  @DomName('EXTBlendMinMax.MIN_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MIN_EXT = 0x8007;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('EXTFragDepth')
// http://www.khronos.org/registry/webgl/extensions/EXT_frag_depth/
@Experimental()
class ExtFragDepth extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory ExtFragDepth._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static ExtFragDepth internalCreateExtFragDepth() {
    return new ExtFragDepth._internalWrap();
  }

  factory ExtFragDepth._internalWrap() {
    return new ExtFragDepth.internal_();
  }

  @Deprecated("Internal Use Only")
  ExtFragDepth.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('EXTShaderTextureLOD')
@Experimental() // untriaged
class ExtShaderTextureLod extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory ExtShaderTextureLod._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static ExtShaderTextureLod internalCreateExtShaderTextureLod() {
    return new ExtShaderTextureLod._internalWrap();
  }

  factory ExtShaderTextureLod._internalWrap() {
    return new ExtShaderTextureLod.internal_();
  }

  @Deprecated("Internal Use Only")
  ExtShaderTextureLod.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('EXTTextureFilterAnisotropic')
// http://www.khronos.org/registry/webgl/extensions/EXT_texture_filter_anisotropic/
@Experimental()
class ExtTextureFilterAnisotropic extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory ExtTextureFilterAnisotropic._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static ExtTextureFilterAnisotropic internalCreateExtTextureFilterAnisotropic() {
    return new ExtTextureFilterAnisotropic._internalWrap();
  }

  factory ExtTextureFilterAnisotropic._internalWrap() {
    return new ExtTextureFilterAnisotropic.internal_();
  }

  @Deprecated("Internal Use Only")
  ExtTextureFilterAnisotropic.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('EXTTextureFilterAnisotropic.MAX_TEXTURE_MAX_ANISOTROPY_EXT')
  @DocsEditable()
  static const int MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF;

  @DomName('EXTTextureFilterAnisotropic.TEXTURE_MAX_ANISOTROPY_EXT')
  @DocsEditable()
  static const int TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLFramebuffer')
@Unstable()
class Framebuffer extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Framebuffer._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Framebuffer internalCreateFramebuffer() {
    return new Framebuffer._internalWrap();
  }

  factory Framebuffer._internalWrap() {
    return new Framebuffer.internal_();
  }

  @Deprecated("Internal Use Only")
  Framebuffer.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLLoseContext')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_lose_context/
@Experimental()
class LoseContext extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory LoseContext._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static LoseContext internalCreateLoseContext() {
    return new LoseContext._internalWrap();
  }

  factory LoseContext._internalWrap() {
    return new LoseContext.internal_();
  }

  @Deprecated("Internal Use Only")
  LoseContext.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLLoseContext.loseContext')
  @DocsEditable()
  void loseContext() => _blink.BlinkWebGLLoseContext.instance.loseContext_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGLLoseContext.restoreContext')
  @DocsEditable()
  void restoreContext() => _blink.BlinkWebGLLoseContext.instance.restoreContext_Callback_0_(unwrap_jso(this));
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('OESElementIndexUint')
// http://www.khronos.org/registry/webgl/extensions/OES_element_index_uint/
@Experimental() // experimental
class OesElementIndexUint extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory OesElementIndexUint._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static OesElementIndexUint internalCreateOesElementIndexUint() {
    return new OesElementIndexUint._internalWrap();
  }

  factory OesElementIndexUint._internalWrap() {
    return new OesElementIndexUint.internal_();
  }

  @Deprecated("Internal Use Only")
  OesElementIndexUint.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('OESStandardDerivatives')
// http://www.khronos.org/registry/webgl/extensions/OES_standard_derivatives/
@Experimental() // experimental
class OesStandardDerivatives extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory OesStandardDerivatives._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static OesStandardDerivatives internalCreateOesStandardDerivatives() {
    return new OesStandardDerivatives._internalWrap();
  }

  factory OesStandardDerivatives._internalWrap() {
    return new OesStandardDerivatives.internal_();
  }

  @Deprecated("Internal Use Only")
  OesStandardDerivatives.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('OESStandardDerivatives.FRAGMENT_SHADER_DERIVATIVE_HINT_OES')
  @DocsEditable()
  static const int FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 0x8B8B;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('OESTextureFloat')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_float/
@Experimental() // experimental
class OesTextureFloat extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory OesTextureFloat._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static OesTextureFloat internalCreateOesTextureFloat() {
    return new OesTextureFloat._internalWrap();
  }

  factory OesTextureFloat._internalWrap() {
    return new OesTextureFloat.internal_();
  }

  @Deprecated("Internal Use Only")
  OesTextureFloat.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('OESTextureFloatLinear')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_float_linear/
@Experimental()
class OesTextureFloatLinear extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory OesTextureFloatLinear._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static OesTextureFloatLinear internalCreateOesTextureFloatLinear() {
    return new OesTextureFloatLinear._internalWrap();
  }

  factory OesTextureFloatLinear._internalWrap() {
    return new OesTextureFloatLinear.internal_();
  }

  @Deprecated("Internal Use Only")
  OesTextureFloatLinear.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('OESTextureHalfFloat')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_half_float/
@Experimental() // experimental
class OesTextureHalfFloat extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory OesTextureHalfFloat._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static OesTextureHalfFloat internalCreateOesTextureHalfFloat() {
    return new OesTextureHalfFloat._internalWrap();
  }

  factory OesTextureHalfFloat._internalWrap() {
    return new OesTextureHalfFloat.internal_();
  }

  @Deprecated("Internal Use Only")
  OesTextureHalfFloat.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('OESTextureHalfFloat.HALF_FLOAT_OES')
  @DocsEditable()
  static const int HALF_FLOAT_OES = 0x8D61;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('OESTextureHalfFloatLinear')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_half_float_linear/
@Experimental()
class OesTextureHalfFloatLinear extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory OesTextureHalfFloatLinear._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static OesTextureHalfFloatLinear internalCreateOesTextureHalfFloatLinear() {
    return new OesTextureHalfFloatLinear._internalWrap();
  }

  factory OesTextureHalfFloatLinear._internalWrap() {
    return new OesTextureHalfFloatLinear.internal_();
  }

  @Deprecated("Internal Use Only")
  OesTextureHalfFloatLinear.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('OESVertexArrayObject')
// http://www.khronos.org/registry/webgl/extensions/OES_vertex_array_object/
@Experimental() // experimental
class OesVertexArrayObject extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory OesVertexArrayObject._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static OesVertexArrayObject internalCreateOesVertexArrayObject() {
    return new OesVertexArrayObject._internalWrap();
  }

  factory OesVertexArrayObject._internalWrap() {
    return new OesVertexArrayObject.internal_();
  }

  @Deprecated("Internal Use Only")
  OesVertexArrayObject.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('OESVertexArrayObject.VERTEX_ARRAY_BINDING_OES')
  @DocsEditable()
  static const int VERTEX_ARRAY_BINDING_OES = 0x85B5;

  @DomName('OESVertexArrayObject.bindVertexArrayOES')
  @DocsEditable()
  void bindVertexArray(VertexArrayObjectOes arrayObject) => _blink.BlinkOESVertexArrayObject.instance.bindVertexArrayOES_Callback_1_(unwrap_jso(this), unwrap_jso(arrayObject));
  
  @DomName('OESVertexArrayObject.createVertexArrayOES')
  @DocsEditable()
  VertexArrayObjectOes createVertexArray() => wrap_jso(_blink.BlinkOESVertexArrayObject.instance.createVertexArrayOES_Callback_0_(unwrap_jso(this)));
  
  @DomName('OESVertexArrayObject.deleteVertexArrayOES')
  @DocsEditable()
  void deleteVertexArray(VertexArrayObjectOes arrayObject) => _blink.BlinkOESVertexArrayObject.instance.deleteVertexArrayOES_Callback_1_(unwrap_jso(this), unwrap_jso(arrayObject));
  
  @DomName('OESVertexArrayObject.isVertexArrayOES')
  @DocsEditable()
  bool isVertexArray(VertexArrayObjectOes arrayObject) => _blink.BlinkOESVertexArrayObject.instance.isVertexArrayOES_Callback_1_(unwrap_jso(this), unwrap_jso(arrayObject));
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLProgram')
@Unstable()
class Program extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Program._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Program internalCreateProgram() {
    return new Program._internalWrap();
  }

  factory Program._internalWrap() {
    return new Program.internal_();
  }

  @Deprecated("Internal Use Only")
  Program.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLQuery')
@Experimental() // untriaged
class Query extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Query._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Query internalCreateQuery() {
    return new Query._internalWrap();
  }

  factory Query._internalWrap() {
    return new Query.internal_();
  }

  @Deprecated("Internal Use Only")
  Query.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLRenderbuffer')
@Unstable()
class Renderbuffer extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Renderbuffer._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Renderbuffer internalCreateRenderbuffer() {
    return new Renderbuffer._internalWrap();
  }

  factory Renderbuffer._internalWrap() {
    return new Renderbuffer.internal_();
  }

  @Deprecated("Internal Use Only")
  Renderbuffer.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DomName('WebGLRenderingContext')
@SupportedBrowser(SupportedBrowser.CHROME)
@SupportedBrowser(SupportedBrowser.FIREFOX)
@Experimental()
@Unstable()
class RenderingContext extends DartHtmlDomObject implements CanvasRenderingContext {
  // To suppress missing implicit constructor warnings.
  factory RenderingContext._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static RenderingContext internalCreateRenderingContext() {
    return new RenderingContext._internalWrap();
  }

  factory RenderingContext._internalWrap() {
    return new RenderingContext.internal_();
  }

  @Deprecated("Internal Use Only")
  RenderingContext.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  /// Checks if this type is supported on the current platform.
  static bool get supported => true;

  @DomName('WebGLRenderingContext.getBufferParameter')
  @DocsEditable()
  Object getBufferParameter(int target, int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getBufferParameter_Callback_2_(unwrap_jso(this), target, pname));
  
  @DomName('WebGLRenderingContext.getExtension')
  @DocsEditable()
  Object getExtension(String name) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getExtension_Callback_1_(unwrap_jso(this), name));
  
  @DomName('WebGLRenderingContext.getFramebufferAttachmentParameter')
  @DocsEditable()
  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getFramebufferAttachmentParameter_Callback_3_(unwrap_jso(this), target, attachment, pname));
  
  @DomName('WebGLRenderingContext.getParameter')
  @DocsEditable()
  Object getParameter(int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getParameter_Callback_1_(unwrap_jso(this), pname));
  
  @DomName('WebGLRenderingContext.getProgramParameter')
  @DocsEditable()
  Object getProgramParameter(Program program, int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getProgramParameter_Callback_2_(unwrap_jso(this), unwrap_jso(program), pname));
  
  @DomName('WebGLRenderingContext.getRenderbufferParameter')
  @DocsEditable()
  Object getRenderbufferParameter(int target, int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getRenderbufferParameter_Callback_2_(unwrap_jso(this), target, pname));
  
  @DomName('WebGLRenderingContext.getShaderParameter')
  @DocsEditable()
  Object getShaderParameter(Shader shader, int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getShaderParameter_Callback_2_(unwrap_jso(this), unwrap_jso(shader), pname));
  
  @DomName('WebGLRenderingContext.getTexParameter')
  @DocsEditable()
  Object getTexParameter(int target, int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getTexParameter_Callback_2_(unwrap_jso(this), target, pname));
  
  @DomName('WebGLRenderingContext.getVertexAttrib')
  @DocsEditable()
  Object getVertexAttrib(int index, int pname) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getVertexAttrib_Callback_2_(unwrap_jso(this), index, pname));
  
  @DomName('WebGLRenderingContext.ACTIVE_ATTRIBUTES')
  @DocsEditable()
  static const int ACTIVE_ATTRIBUTES = 0x8B89;

  @DomName('WebGLRenderingContext.ACTIVE_TEXTURE')
  @DocsEditable()
  static const int ACTIVE_TEXTURE = 0x84E0;

  @DomName('WebGLRenderingContext.ACTIVE_UNIFORMS')
  @DocsEditable()
  static const int ACTIVE_UNIFORMS = 0x8B86;

  @DomName('WebGLRenderingContext.ALIASED_LINE_WIDTH_RANGE')
  @DocsEditable()
  static const int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  @DomName('WebGLRenderingContext.ALIASED_POINT_SIZE_RANGE')
  @DocsEditable()
  static const int ALIASED_POINT_SIZE_RANGE = 0x846D;

  @DomName('WebGLRenderingContext.ALPHA')
  @DocsEditable()
  static const int ALPHA = 0x1906;

  @DomName('WebGLRenderingContext.ALPHA_BITS')
  @DocsEditable()
  static const int ALPHA_BITS = 0x0D55;

  @DomName('WebGLRenderingContext.ALWAYS')
  @DocsEditable()
  static const int ALWAYS = 0x0207;

  @DomName('WebGLRenderingContext.ARRAY_BUFFER')
  @DocsEditable()
  static const int ARRAY_BUFFER = 0x8892;

  @DomName('WebGLRenderingContext.ARRAY_BUFFER_BINDING')
  @DocsEditable()
  static const int ARRAY_BUFFER_BINDING = 0x8894;

  @DomName('WebGLRenderingContext.ATTACHED_SHADERS')
  @DocsEditable()
  static const int ATTACHED_SHADERS = 0x8B85;

  @DomName('WebGLRenderingContext.BACK')
  @DocsEditable()
  static const int BACK = 0x0405;

  @DomName('WebGLRenderingContext.BLEND')
  @DocsEditable()
  static const int BLEND = 0x0BE2;

  @DomName('WebGLRenderingContext.BLEND_COLOR')
  @DocsEditable()
  static const int BLEND_COLOR = 0x8005;

  @DomName('WebGLRenderingContext.BLEND_DST_ALPHA')
  @DocsEditable()
  static const int BLEND_DST_ALPHA = 0x80CA;

  @DomName('WebGLRenderingContext.BLEND_DST_RGB')
  @DocsEditable()
  static const int BLEND_DST_RGB = 0x80C8;

  @DomName('WebGLRenderingContext.BLEND_EQUATION')
  @DocsEditable()
  static const int BLEND_EQUATION = 0x8009;

  @DomName('WebGLRenderingContext.BLEND_EQUATION_ALPHA')
  @DocsEditable()
  static const int BLEND_EQUATION_ALPHA = 0x883D;

  @DomName('WebGLRenderingContext.BLEND_EQUATION_RGB')
  @DocsEditable()
  static const int BLEND_EQUATION_RGB = 0x8009;

  @DomName('WebGLRenderingContext.BLEND_SRC_ALPHA')
  @DocsEditable()
  static const int BLEND_SRC_ALPHA = 0x80CB;

  @DomName('WebGLRenderingContext.BLEND_SRC_RGB')
  @DocsEditable()
  static const int BLEND_SRC_RGB = 0x80C9;

  @DomName('WebGLRenderingContext.BLUE_BITS')
  @DocsEditable()
  static const int BLUE_BITS = 0x0D54;

  @DomName('WebGLRenderingContext.BOOL')
  @DocsEditable()
  static const int BOOL = 0x8B56;

  @DomName('WebGLRenderingContext.BOOL_VEC2')
  @DocsEditable()
  static const int BOOL_VEC2 = 0x8B57;

  @DomName('WebGLRenderingContext.BOOL_VEC3')
  @DocsEditable()
  static const int BOOL_VEC3 = 0x8B58;

  @DomName('WebGLRenderingContext.BOOL_VEC4')
  @DocsEditable()
  static const int BOOL_VEC4 = 0x8B59;

  @DomName('WebGLRenderingContext.BROWSER_DEFAULT_WEBGL')
  @DocsEditable()
  static const int BROWSER_DEFAULT_WEBGL = 0x9244;

  @DomName('WebGLRenderingContext.BUFFER_SIZE')
  @DocsEditable()
  static const int BUFFER_SIZE = 0x8764;

  @DomName('WebGLRenderingContext.BUFFER_USAGE')
  @DocsEditable()
  static const int BUFFER_USAGE = 0x8765;

  @DomName('WebGLRenderingContext.BYTE')
  @DocsEditable()
  static const int BYTE = 0x1400;

  @DomName('WebGLRenderingContext.CCW')
  @DocsEditable()
  static const int CCW = 0x0901;

  @DomName('WebGLRenderingContext.CLAMP_TO_EDGE')
  @DocsEditable()
  static const int CLAMP_TO_EDGE = 0x812F;

  @DomName('WebGLRenderingContext.COLOR_ATTACHMENT0')
  @DocsEditable()
  static const int COLOR_ATTACHMENT0 = 0x8CE0;

  @DomName('WebGLRenderingContext.COLOR_BUFFER_BIT')
  @DocsEditable()
  static const int COLOR_BUFFER_BIT = 0x00004000;

  @DomName('WebGLRenderingContext.COLOR_CLEAR_VALUE')
  @DocsEditable()
  static const int COLOR_CLEAR_VALUE = 0x0C22;

  @DomName('WebGLRenderingContext.COLOR_WRITEMASK')
  @DocsEditable()
  static const int COLOR_WRITEMASK = 0x0C23;

  @DomName('WebGLRenderingContext.COMPILE_STATUS')
  @DocsEditable()
  static const int COMPILE_STATUS = 0x8B81;

  @DomName('WebGLRenderingContext.COMPRESSED_TEXTURE_FORMATS')
  @DocsEditable()
  static const int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  @DomName('WebGLRenderingContext.CONSTANT_ALPHA')
  @DocsEditable()
  static const int CONSTANT_ALPHA = 0x8003;

  @DomName('WebGLRenderingContext.CONSTANT_COLOR')
  @DocsEditable()
  static const int CONSTANT_COLOR = 0x8001;

  @DomName('WebGLRenderingContext.CONTEXT_LOST_WEBGL')
  @DocsEditable()
  static const int CONTEXT_LOST_WEBGL = 0x9242;

  @DomName('WebGLRenderingContext.CULL_FACE')
  @DocsEditable()
  static const int CULL_FACE = 0x0B44;

  @DomName('WebGLRenderingContext.CULL_FACE_MODE')
  @DocsEditable()
  static const int CULL_FACE_MODE = 0x0B45;

  @DomName('WebGLRenderingContext.CURRENT_PROGRAM')
  @DocsEditable()
  static const int CURRENT_PROGRAM = 0x8B8D;

  @DomName('WebGLRenderingContext.CURRENT_VERTEX_ATTRIB')
  @DocsEditable()
  static const int CURRENT_VERTEX_ATTRIB = 0x8626;

  @DomName('WebGLRenderingContext.CW')
  @DocsEditable()
  static const int CW = 0x0900;

  @DomName('WebGLRenderingContext.DECR')
  @DocsEditable()
  static const int DECR = 0x1E03;

  @DomName('WebGLRenderingContext.DECR_WRAP')
  @DocsEditable()
  static const int DECR_WRAP = 0x8508;

  @DomName('WebGLRenderingContext.DELETE_STATUS')
  @DocsEditable()
  static const int DELETE_STATUS = 0x8B80;

  @DomName('WebGLRenderingContext.DEPTH_ATTACHMENT')
  @DocsEditable()
  static const int DEPTH_ATTACHMENT = 0x8D00;

  @DomName('WebGLRenderingContext.DEPTH_BITS')
  @DocsEditable()
  static const int DEPTH_BITS = 0x0D56;

  @DomName('WebGLRenderingContext.DEPTH_BUFFER_BIT')
  @DocsEditable()
  static const int DEPTH_BUFFER_BIT = 0x00000100;

  @DomName('WebGLRenderingContext.DEPTH_CLEAR_VALUE')
  @DocsEditable()
  static const int DEPTH_CLEAR_VALUE = 0x0B73;

  @DomName('WebGLRenderingContext.DEPTH_COMPONENT')
  @DocsEditable()
  static const int DEPTH_COMPONENT = 0x1902;

  @DomName('WebGLRenderingContext.DEPTH_COMPONENT16')
  @DocsEditable()
  static const int DEPTH_COMPONENT16 = 0x81A5;

  @DomName('WebGLRenderingContext.DEPTH_FUNC')
  @DocsEditable()
  static const int DEPTH_FUNC = 0x0B74;

  @DomName('WebGLRenderingContext.DEPTH_RANGE')
  @DocsEditable()
  static const int DEPTH_RANGE = 0x0B70;

  @DomName('WebGLRenderingContext.DEPTH_STENCIL')
  @DocsEditable()
  static const int DEPTH_STENCIL = 0x84F9;

  @DomName('WebGLRenderingContext.DEPTH_STENCIL_ATTACHMENT')
  @DocsEditable()
  static const int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  @DomName('WebGLRenderingContext.DEPTH_TEST')
  @DocsEditable()
  static const int DEPTH_TEST = 0x0B71;

  @DomName('WebGLRenderingContext.DEPTH_WRITEMASK')
  @DocsEditable()
  static const int DEPTH_WRITEMASK = 0x0B72;

  @DomName('WebGLRenderingContext.DITHER')
  @DocsEditable()
  static const int DITHER = 0x0BD0;

  @DomName('WebGLRenderingContext.DONT_CARE')
  @DocsEditable()
  static const int DONT_CARE = 0x1100;

  @DomName('WebGLRenderingContext.DST_ALPHA')
  @DocsEditable()
  static const int DST_ALPHA = 0x0304;

  @DomName('WebGLRenderingContext.DST_COLOR')
  @DocsEditable()
  static const int DST_COLOR = 0x0306;

  @DomName('WebGLRenderingContext.DYNAMIC_DRAW')
  @DocsEditable()
  static const int DYNAMIC_DRAW = 0x88E8;

  @DomName('WebGLRenderingContext.ELEMENT_ARRAY_BUFFER')
  @DocsEditable()
  static const int ELEMENT_ARRAY_BUFFER = 0x8893;

  @DomName('WebGLRenderingContext.ELEMENT_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  static const int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  @DomName('WebGLRenderingContext.EQUAL')
  @DocsEditable()
  static const int EQUAL = 0x0202;

  @DomName('WebGLRenderingContext.FASTEST')
  @DocsEditable()
  static const int FASTEST = 0x1101;

  @DomName('WebGLRenderingContext.FLOAT')
  @DocsEditable()
  static const int FLOAT = 0x1406;

  @DomName('WebGLRenderingContext.FLOAT_MAT2')
  @DocsEditable()
  static const int FLOAT_MAT2 = 0x8B5A;

  @DomName('WebGLRenderingContext.FLOAT_MAT3')
  @DocsEditable()
  static const int FLOAT_MAT3 = 0x8B5B;

  @DomName('WebGLRenderingContext.FLOAT_MAT4')
  @DocsEditable()
  static const int FLOAT_MAT4 = 0x8B5C;

  @DomName('WebGLRenderingContext.FLOAT_VEC2')
  @DocsEditable()
  static const int FLOAT_VEC2 = 0x8B50;

  @DomName('WebGLRenderingContext.FLOAT_VEC3')
  @DocsEditable()
  static const int FLOAT_VEC3 = 0x8B51;

  @DomName('WebGLRenderingContext.FLOAT_VEC4')
  @DocsEditable()
  static const int FLOAT_VEC4 = 0x8B52;

  @DomName('WebGLRenderingContext.FRAGMENT_SHADER')
  @DocsEditable()
  static const int FRAGMENT_SHADER = 0x8B30;

  @DomName('WebGLRenderingContext.FRAMEBUFFER')
  @DocsEditable()
  static const int FRAMEBUFFER = 0x8D40;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_BINDING')
  @DocsEditable()
  static const int FRAMEBUFFER_BINDING = 0x8CA6;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_COMPLETE')
  @DocsEditable()
  static const int FRAMEBUFFER_COMPLETE = 0x8CD5;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
  @DocsEditable()
  static const int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
  @DocsEditable()
  static const int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
  @DocsEditable()
  static const int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_UNSUPPORTED')
  @DocsEditable()
  static const int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  @DomName('WebGLRenderingContext.FRONT')
  @DocsEditable()
  static const int FRONT = 0x0404;

  @DomName('WebGLRenderingContext.FRONT_AND_BACK')
  @DocsEditable()
  static const int FRONT_AND_BACK = 0x0408;

  @DomName('WebGLRenderingContext.FRONT_FACE')
  @DocsEditable()
  static const int FRONT_FACE = 0x0B46;

  @DomName('WebGLRenderingContext.FUNC_ADD')
  @DocsEditable()
  static const int FUNC_ADD = 0x8006;

  @DomName('WebGLRenderingContext.FUNC_REVERSE_SUBTRACT')
  @DocsEditable()
  static const int FUNC_REVERSE_SUBTRACT = 0x800B;

  @DomName('WebGLRenderingContext.FUNC_SUBTRACT')
  @DocsEditable()
  static const int FUNC_SUBTRACT = 0x800A;

  @DomName('WebGLRenderingContext.GENERATE_MIPMAP_HINT')
  @DocsEditable()
  static const int GENERATE_MIPMAP_HINT = 0x8192;

  @DomName('WebGLRenderingContext.GEQUAL')
  @DocsEditable()
  static const int GEQUAL = 0x0206;

  @DomName('WebGLRenderingContext.GREATER')
  @DocsEditable()
  static const int GREATER = 0x0204;

  @DomName('WebGLRenderingContext.GREEN_BITS')
  @DocsEditable()
  static const int GREEN_BITS = 0x0D53;

  @DomName('WebGLRenderingContext.HIGH_FLOAT')
  @DocsEditable()
  static const int HIGH_FLOAT = 0x8DF2;

  @DomName('WebGLRenderingContext.HIGH_INT')
  @DocsEditable()
  static const int HIGH_INT = 0x8DF5;

  @DomName('WebGLRenderingContext.IMPLEMENTATION_COLOR_READ_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;

  @DomName('WebGLRenderingContext.IMPLEMENTATION_COLOR_READ_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;

  @DomName('WebGLRenderingContext.INCR')
  @DocsEditable()
  static const int INCR = 0x1E02;

  @DomName('WebGLRenderingContext.INCR_WRAP')
  @DocsEditable()
  static const int INCR_WRAP = 0x8507;

  @DomName('WebGLRenderingContext.INT')
  @DocsEditable()
  static const int INT = 0x1404;

  @DomName('WebGLRenderingContext.INT_VEC2')
  @DocsEditable()
  static const int INT_VEC2 = 0x8B53;

  @DomName('WebGLRenderingContext.INT_VEC3')
  @DocsEditable()
  static const int INT_VEC3 = 0x8B54;

  @DomName('WebGLRenderingContext.INT_VEC4')
  @DocsEditable()
  static const int INT_VEC4 = 0x8B55;

  @DomName('WebGLRenderingContext.INVALID_ENUM')
  @DocsEditable()
  static const int INVALID_ENUM = 0x0500;

  @DomName('WebGLRenderingContext.INVALID_FRAMEBUFFER_OPERATION')
  @DocsEditable()
  static const int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  @DomName('WebGLRenderingContext.INVALID_OPERATION')
  @DocsEditable()
  static const int INVALID_OPERATION = 0x0502;

  @DomName('WebGLRenderingContext.INVALID_VALUE')
  @DocsEditable()
  static const int INVALID_VALUE = 0x0501;

  @DomName('WebGLRenderingContext.INVERT')
  @DocsEditable()
  static const int INVERT = 0x150A;

  @DomName('WebGLRenderingContext.KEEP')
  @DocsEditable()
  static const int KEEP = 0x1E00;

  @DomName('WebGLRenderingContext.LEQUAL')
  @DocsEditable()
  static const int LEQUAL = 0x0203;

  @DomName('WebGLRenderingContext.LESS')
  @DocsEditable()
  static const int LESS = 0x0201;

  @DomName('WebGLRenderingContext.LINEAR')
  @DocsEditable()
  static const int LINEAR = 0x2601;

  @DomName('WebGLRenderingContext.LINEAR_MIPMAP_LINEAR')
  @DocsEditable()
  static const int LINEAR_MIPMAP_LINEAR = 0x2703;

  @DomName('WebGLRenderingContext.LINEAR_MIPMAP_NEAREST')
  @DocsEditable()
  static const int LINEAR_MIPMAP_NEAREST = 0x2701;

  @DomName('WebGLRenderingContext.LINES')
  @DocsEditable()
  static const int LINES = 0x0001;

  @DomName('WebGLRenderingContext.LINE_LOOP')
  @DocsEditable()
  static const int LINE_LOOP = 0x0002;

  @DomName('WebGLRenderingContext.LINE_STRIP')
  @DocsEditable()
  static const int LINE_STRIP = 0x0003;

  @DomName('WebGLRenderingContext.LINE_WIDTH')
  @DocsEditable()
  static const int LINE_WIDTH = 0x0B21;

  @DomName('WebGLRenderingContext.LINK_STATUS')
  @DocsEditable()
  static const int LINK_STATUS = 0x8B82;

  @DomName('WebGLRenderingContext.LOW_FLOAT')
  @DocsEditable()
  static const int LOW_FLOAT = 0x8DF0;

  @DomName('WebGLRenderingContext.LOW_INT')
  @DocsEditable()
  static const int LOW_INT = 0x8DF3;

  @DomName('WebGLRenderingContext.LUMINANCE')
  @DocsEditable()
  static const int LUMINANCE = 0x1909;

  @DomName('WebGLRenderingContext.LUMINANCE_ALPHA')
  @DocsEditable()
  static const int LUMINANCE_ALPHA = 0x190A;

  @DomName('WebGLRenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  static const int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  @DomName('WebGLRenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE')
  @DocsEditable()
  static const int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  @DomName('WebGLRenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS')
  @DocsEditable()
  static const int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  @DomName('WebGLRenderingContext.MAX_RENDERBUFFER_SIZE')
  @DocsEditable()
  static const int MAX_RENDERBUFFER_SIZE = 0x84E8;

  @DomName('WebGLRenderingContext.MAX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  static const int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  @DomName('WebGLRenderingContext.MAX_TEXTURE_SIZE')
  @DocsEditable()
  static const int MAX_TEXTURE_SIZE = 0x0D33;

  @DomName('WebGLRenderingContext.MAX_VARYING_VECTORS')
  @DocsEditable()
  static const int MAX_VARYING_VECTORS = 0x8DFC;

  @DomName('WebGLRenderingContext.MAX_VERTEX_ATTRIBS')
  @DocsEditable()
  static const int MAX_VERTEX_ATTRIBS = 0x8869;

  @DomName('WebGLRenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  static const int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  @DomName('WebGLRenderingContext.MAX_VERTEX_UNIFORM_VECTORS')
  @DocsEditable()
  static const int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  @DomName('WebGLRenderingContext.MAX_VIEWPORT_DIMS')
  @DocsEditable()
  static const int MAX_VIEWPORT_DIMS = 0x0D3A;

  @DomName('WebGLRenderingContext.MEDIUM_FLOAT')
  @DocsEditable()
  static const int MEDIUM_FLOAT = 0x8DF1;

  @DomName('WebGLRenderingContext.MEDIUM_INT')
  @DocsEditable()
  static const int MEDIUM_INT = 0x8DF4;

  @DomName('WebGLRenderingContext.MIRRORED_REPEAT')
  @DocsEditable()
  static const int MIRRORED_REPEAT = 0x8370;

  @DomName('WebGLRenderingContext.NEAREST')
  @DocsEditable()
  static const int NEAREST = 0x2600;

  @DomName('WebGLRenderingContext.NEAREST_MIPMAP_LINEAR')
  @DocsEditable()
  static const int NEAREST_MIPMAP_LINEAR = 0x2702;

  @DomName('WebGLRenderingContext.NEAREST_MIPMAP_NEAREST')
  @DocsEditable()
  static const int NEAREST_MIPMAP_NEAREST = 0x2700;

  @DomName('WebGLRenderingContext.NEVER')
  @DocsEditable()
  static const int NEVER = 0x0200;

  @DomName('WebGLRenderingContext.NICEST')
  @DocsEditable()
  static const int NICEST = 0x1102;

  @DomName('WebGLRenderingContext.NONE')
  @DocsEditable()
  static const int NONE = 0;

  @DomName('WebGLRenderingContext.NOTEQUAL')
  @DocsEditable()
  static const int NOTEQUAL = 0x0205;

  @DomName('WebGLRenderingContext.NO_ERROR')
  @DocsEditable()
  static const int NO_ERROR = 0;

  @DomName('WebGLRenderingContext.ONE')
  @DocsEditable()
  static const int ONE = 1;

  @DomName('WebGLRenderingContext.ONE_MINUS_CONSTANT_ALPHA')
  @DocsEditable()
  static const int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  @DomName('WebGLRenderingContext.ONE_MINUS_CONSTANT_COLOR')
  @DocsEditable()
  static const int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  @DomName('WebGLRenderingContext.ONE_MINUS_DST_ALPHA')
  @DocsEditable()
  static const int ONE_MINUS_DST_ALPHA = 0x0305;

  @DomName('WebGLRenderingContext.ONE_MINUS_DST_COLOR')
  @DocsEditable()
  static const int ONE_MINUS_DST_COLOR = 0x0307;

  @DomName('WebGLRenderingContext.ONE_MINUS_SRC_ALPHA')
  @DocsEditable()
  static const int ONE_MINUS_SRC_ALPHA = 0x0303;

  @DomName('WebGLRenderingContext.ONE_MINUS_SRC_COLOR')
  @DocsEditable()
  static const int ONE_MINUS_SRC_COLOR = 0x0301;

  @DomName('WebGLRenderingContext.OUT_OF_MEMORY')
  @DocsEditable()
  static const int OUT_OF_MEMORY = 0x0505;

  @DomName('WebGLRenderingContext.PACK_ALIGNMENT')
  @DocsEditable()
  static const int PACK_ALIGNMENT = 0x0D05;

  @DomName('WebGLRenderingContext.POINTS')
  @DocsEditable()
  static const int POINTS = 0x0000;

  @DomName('WebGLRenderingContext.POLYGON_OFFSET_FACTOR')
  @DocsEditable()
  static const int POLYGON_OFFSET_FACTOR = 0x8038;

  @DomName('WebGLRenderingContext.POLYGON_OFFSET_FILL')
  @DocsEditable()
  static const int POLYGON_OFFSET_FILL = 0x8037;

  @DomName('WebGLRenderingContext.POLYGON_OFFSET_UNITS')
  @DocsEditable()
  static const int POLYGON_OFFSET_UNITS = 0x2A00;

  @DomName('WebGLRenderingContext.RED_BITS')
  @DocsEditable()
  static const int RED_BITS = 0x0D52;

  @DomName('WebGLRenderingContext.RENDERBUFFER')
  @DocsEditable()
  static const int RENDERBUFFER = 0x8D41;

  @DomName('WebGLRenderingContext.RENDERBUFFER_ALPHA_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  @DomName('WebGLRenderingContext.RENDERBUFFER_BINDING')
  @DocsEditable()
  static const int RENDERBUFFER_BINDING = 0x8CA7;

  @DomName('WebGLRenderingContext.RENDERBUFFER_BLUE_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  @DomName('WebGLRenderingContext.RENDERBUFFER_DEPTH_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  @DomName('WebGLRenderingContext.RENDERBUFFER_GREEN_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  @DomName('WebGLRenderingContext.RENDERBUFFER_HEIGHT')
  @DocsEditable()
  static const int RENDERBUFFER_HEIGHT = 0x8D43;

  @DomName('WebGLRenderingContext.RENDERBUFFER_INTERNAL_FORMAT')
  @DocsEditable()
  static const int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  @DomName('WebGLRenderingContext.RENDERBUFFER_RED_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_RED_SIZE = 0x8D50;

  @DomName('WebGLRenderingContext.RENDERBUFFER_STENCIL_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  @DomName('WebGLRenderingContext.RENDERBUFFER_WIDTH')
  @DocsEditable()
  static const int RENDERBUFFER_WIDTH = 0x8D42;

  @DomName('WebGLRenderingContext.RENDERER')
  @DocsEditable()
  static const int RENDERER = 0x1F01;

  @DomName('WebGLRenderingContext.REPEAT')
  @DocsEditable()
  static const int REPEAT = 0x2901;

  @DomName('WebGLRenderingContext.REPLACE')
  @DocsEditable()
  static const int REPLACE = 0x1E01;

  @DomName('WebGLRenderingContext.RGB')
  @DocsEditable()
  static const int RGB = 0x1907;

  @DomName('WebGLRenderingContext.RGB565')
  @DocsEditable()
  static const int RGB565 = 0x8D62;

  @DomName('WebGLRenderingContext.RGB5_A1')
  @DocsEditable()
  static const int RGB5_A1 = 0x8057;

  @DomName('WebGLRenderingContext.RGBA')
  @DocsEditable()
  static const int RGBA = 0x1908;

  @DomName('WebGLRenderingContext.RGBA4')
  @DocsEditable()
  static const int RGBA4 = 0x8056;

  @DomName('WebGLRenderingContext.SAMPLER_2D')
  @DocsEditable()
  static const int SAMPLER_2D = 0x8B5E;

  @DomName('WebGLRenderingContext.SAMPLER_CUBE')
  @DocsEditable()
  static const int SAMPLER_CUBE = 0x8B60;

  @DomName('WebGLRenderingContext.SAMPLES')
  @DocsEditable()
  static const int SAMPLES = 0x80A9;

  @DomName('WebGLRenderingContext.SAMPLE_ALPHA_TO_COVERAGE')
  @DocsEditable()
  static const int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  @DomName('WebGLRenderingContext.SAMPLE_BUFFERS')
  @DocsEditable()
  static const int SAMPLE_BUFFERS = 0x80A8;

  @DomName('WebGLRenderingContext.SAMPLE_COVERAGE')
  @DocsEditable()
  static const int SAMPLE_COVERAGE = 0x80A0;

  @DomName('WebGLRenderingContext.SAMPLE_COVERAGE_INVERT')
  @DocsEditable()
  static const int SAMPLE_COVERAGE_INVERT = 0x80AB;

  @DomName('WebGLRenderingContext.SAMPLE_COVERAGE_VALUE')
  @DocsEditable()
  static const int SAMPLE_COVERAGE_VALUE = 0x80AA;

  @DomName('WebGLRenderingContext.SCISSOR_BOX')
  @DocsEditable()
  static const int SCISSOR_BOX = 0x0C10;

  @DomName('WebGLRenderingContext.SCISSOR_TEST')
  @DocsEditable()
  static const int SCISSOR_TEST = 0x0C11;

  @DomName('WebGLRenderingContext.SHADER_TYPE')
  @DocsEditable()
  static const int SHADER_TYPE = 0x8B4F;

  @DomName('WebGLRenderingContext.SHADING_LANGUAGE_VERSION')
  @DocsEditable()
  static const int SHADING_LANGUAGE_VERSION = 0x8B8C;

  @DomName('WebGLRenderingContext.SHORT')
  @DocsEditable()
  static const int SHORT = 0x1402;

  @DomName('WebGLRenderingContext.SRC_ALPHA')
  @DocsEditable()
  static const int SRC_ALPHA = 0x0302;

  @DomName('WebGLRenderingContext.SRC_ALPHA_SATURATE')
  @DocsEditable()
  static const int SRC_ALPHA_SATURATE = 0x0308;

  @DomName('WebGLRenderingContext.SRC_COLOR')
  @DocsEditable()
  static const int SRC_COLOR = 0x0300;

  @DomName('WebGLRenderingContext.STATIC_DRAW')
  @DocsEditable()
  static const int STATIC_DRAW = 0x88E4;

  @DomName('WebGLRenderingContext.STENCIL_ATTACHMENT')
  @DocsEditable()
  static const int STENCIL_ATTACHMENT = 0x8D20;

  @DomName('WebGLRenderingContext.STENCIL_BACK_FAIL')
  @DocsEditable()
  static const int STENCIL_BACK_FAIL = 0x8801;

  @DomName('WebGLRenderingContext.STENCIL_BACK_FUNC')
  @DocsEditable()
  static const int STENCIL_BACK_FUNC = 0x8800;

  @DomName('WebGLRenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL')
  @DocsEditable()
  static const int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  @DomName('WebGLRenderingContext.STENCIL_BACK_PASS_DEPTH_PASS')
  @DocsEditable()
  static const int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  @DomName('WebGLRenderingContext.STENCIL_BACK_REF')
  @DocsEditable()
  static const int STENCIL_BACK_REF = 0x8CA3;

  @DomName('WebGLRenderingContext.STENCIL_BACK_VALUE_MASK')
  @DocsEditable()
  static const int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  @DomName('WebGLRenderingContext.STENCIL_BACK_WRITEMASK')
  @DocsEditable()
  static const int STENCIL_BACK_WRITEMASK = 0x8CA5;

  @DomName('WebGLRenderingContext.STENCIL_BITS')
  @DocsEditable()
  static const int STENCIL_BITS = 0x0D57;

  @DomName('WebGLRenderingContext.STENCIL_BUFFER_BIT')
  @DocsEditable()
  static const int STENCIL_BUFFER_BIT = 0x00000400;

  @DomName('WebGLRenderingContext.STENCIL_CLEAR_VALUE')
  @DocsEditable()
  static const int STENCIL_CLEAR_VALUE = 0x0B91;

  @DomName('WebGLRenderingContext.STENCIL_FAIL')
  @DocsEditable()
  static const int STENCIL_FAIL = 0x0B94;

  @DomName('WebGLRenderingContext.STENCIL_FUNC')
  @DocsEditable()
  static const int STENCIL_FUNC = 0x0B92;

  @DomName('WebGLRenderingContext.STENCIL_INDEX')
  @DocsEditable()
  static const int STENCIL_INDEX = 0x1901;

  @DomName('WebGLRenderingContext.STENCIL_INDEX8')
  @DocsEditable()
  static const int STENCIL_INDEX8 = 0x8D48;

  @DomName('WebGLRenderingContext.STENCIL_PASS_DEPTH_FAIL')
  @DocsEditable()
  static const int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  @DomName('WebGLRenderingContext.STENCIL_PASS_DEPTH_PASS')
  @DocsEditable()
  static const int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  @DomName('WebGLRenderingContext.STENCIL_REF')
  @DocsEditable()
  static const int STENCIL_REF = 0x0B97;

  @DomName('WebGLRenderingContext.STENCIL_TEST')
  @DocsEditable()
  static const int STENCIL_TEST = 0x0B90;

  @DomName('WebGLRenderingContext.STENCIL_VALUE_MASK')
  @DocsEditable()
  static const int STENCIL_VALUE_MASK = 0x0B93;

  @DomName('WebGLRenderingContext.STENCIL_WRITEMASK')
  @DocsEditable()
  static const int STENCIL_WRITEMASK = 0x0B98;

  @DomName('WebGLRenderingContext.STREAM_DRAW')
  @DocsEditable()
  static const int STREAM_DRAW = 0x88E0;

  @DomName('WebGLRenderingContext.SUBPIXEL_BITS')
  @DocsEditable()
  static const int SUBPIXEL_BITS = 0x0D50;

  @DomName('WebGLRenderingContext.TEXTURE')
  @DocsEditable()
  static const int TEXTURE = 0x1702;

  @DomName('WebGLRenderingContext.TEXTURE0')
  @DocsEditable()
  static const int TEXTURE0 = 0x84C0;

  @DomName('WebGLRenderingContext.TEXTURE1')
  @DocsEditable()
  static const int TEXTURE1 = 0x84C1;

  @DomName('WebGLRenderingContext.TEXTURE10')
  @DocsEditable()
  static const int TEXTURE10 = 0x84CA;

  @DomName('WebGLRenderingContext.TEXTURE11')
  @DocsEditable()
  static const int TEXTURE11 = 0x84CB;

  @DomName('WebGLRenderingContext.TEXTURE12')
  @DocsEditable()
  static const int TEXTURE12 = 0x84CC;

  @DomName('WebGLRenderingContext.TEXTURE13')
  @DocsEditable()
  static const int TEXTURE13 = 0x84CD;

  @DomName('WebGLRenderingContext.TEXTURE14')
  @DocsEditable()
  static const int TEXTURE14 = 0x84CE;

  @DomName('WebGLRenderingContext.TEXTURE15')
  @DocsEditable()
  static const int TEXTURE15 = 0x84CF;

  @DomName('WebGLRenderingContext.TEXTURE16')
  @DocsEditable()
  static const int TEXTURE16 = 0x84D0;

  @DomName('WebGLRenderingContext.TEXTURE17')
  @DocsEditable()
  static const int TEXTURE17 = 0x84D1;

  @DomName('WebGLRenderingContext.TEXTURE18')
  @DocsEditable()
  static const int TEXTURE18 = 0x84D2;

  @DomName('WebGLRenderingContext.TEXTURE19')
  @DocsEditable()
  static const int TEXTURE19 = 0x84D3;

  @DomName('WebGLRenderingContext.TEXTURE2')
  @DocsEditable()
  static const int TEXTURE2 = 0x84C2;

  @DomName('WebGLRenderingContext.TEXTURE20')
  @DocsEditable()
  static const int TEXTURE20 = 0x84D4;

  @DomName('WebGLRenderingContext.TEXTURE21')
  @DocsEditable()
  static const int TEXTURE21 = 0x84D5;

  @DomName('WebGLRenderingContext.TEXTURE22')
  @DocsEditable()
  static const int TEXTURE22 = 0x84D6;

  @DomName('WebGLRenderingContext.TEXTURE23')
  @DocsEditable()
  static const int TEXTURE23 = 0x84D7;

  @DomName('WebGLRenderingContext.TEXTURE24')
  @DocsEditable()
  static const int TEXTURE24 = 0x84D8;

  @DomName('WebGLRenderingContext.TEXTURE25')
  @DocsEditable()
  static const int TEXTURE25 = 0x84D9;

  @DomName('WebGLRenderingContext.TEXTURE26')
  @DocsEditable()
  static const int TEXTURE26 = 0x84DA;

  @DomName('WebGLRenderingContext.TEXTURE27')
  @DocsEditable()
  static const int TEXTURE27 = 0x84DB;

  @DomName('WebGLRenderingContext.TEXTURE28')
  @DocsEditable()
  static const int TEXTURE28 = 0x84DC;

  @DomName('WebGLRenderingContext.TEXTURE29')
  @DocsEditable()
  static const int TEXTURE29 = 0x84DD;

  @DomName('WebGLRenderingContext.TEXTURE3')
  @DocsEditable()
  static const int TEXTURE3 = 0x84C3;

  @DomName('WebGLRenderingContext.TEXTURE30')
  @DocsEditable()
  static const int TEXTURE30 = 0x84DE;

  @DomName('WebGLRenderingContext.TEXTURE31')
  @DocsEditable()
  static const int TEXTURE31 = 0x84DF;

  @DomName('WebGLRenderingContext.TEXTURE4')
  @DocsEditable()
  static const int TEXTURE4 = 0x84C4;

  @DomName('WebGLRenderingContext.TEXTURE5')
  @DocsEditable()
  static const int TEXTURE5 = 0x84C5;

  @DomName('WebGLRenderingContext.TEXTURE6')
  @DocsEditable()
  static const int TEXTURE6 = 0x84C6;

  @DomName('WebGLRenderingContext.TEXTURE7')
  @DocsEditable()
  static const int TEXTURE7 = 0x84C7;

  @DomName('WebGLRenderingContext.TEXTURE8')
  @DocsEditable()
  static const int TEXTURE8 = 0x84C8;

  @DomName('WebGLRenderingContext.TEXTURE9')
  @DocsEditable()
  static const int TEXTURE9 = 0x84C9;

  @DomName('WebGLRenderingContext.TEXTURE_2D')
  @DocsEditable()
  static const int TEXTURE_2D = 0x0DE1;

  @DomName('WebGLRenderingContext.TEXTURE_BINDING_2D')
  @DocsEditable()
  static const int TEXTURE_BINDING_2D = 0x8069;

  @DomName('WebGLRenderingContext.TEXTURE_BINDING_CUBE_MAP')
  @DocsEditable()
  static const int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP = 0x8513;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  @DomName('WebGLRenderingContext.TEXTURE_MAG_FILTER')
  @DocsEditable()
  static const int TEXTURE_MAG_FILTER = 0x2800;

  @DomName('WebGLRenderingContext.TEXTURE_MIN_FILTER')
  @DocsEditable()
  static const int TEXTURE_MIN_FILTER = 0x2801;

  @DomName('WebGLRenderingContext.TEXTURE_WRAP_S')
  @DocsEditable()
  static const int TEXTURE_WRAP_S = 0x2802;

  @DomName('WebGLRenderingContext.TEXTURE_WRAP_T')
  @DocsEditable()
  static const int TEXTURE_WRAP_T = 0x2803;

  @DomName('WebGLRenderingContext.TRIANGLES')
  @DocsEditable()
  static const int TRIANGLES = 0x0004;

  @DomName('WebGLRenderingContext.TRIANGLE_FAN')
  @DocsEditable()
  static const int TRIANGLE_FAN = 0x0006;

  @DomName('WebGLRenderingContext.TRIANGLE_STRIP')
  @DocsEditable()
  static const int TRIANGLE_STRIP = 0x0005;

  @DomName('WebGLRenderingContext.UNPACK_ALIGNMENT')
  @DocsEditable()
  static const int UNPACK_ALIGNMENT = 0x0CF5;

  @DomName('WebGLRenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL')
  @DocsEditable()
  static const int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  @DomName('WebGLRenderingContext.UNPACK_FLIP_Y_WEBGL')
  @DocsEditable()
  static const int UNPACK_FLIP_Y_WEBGL = 0x9240;

  @DomName('WebGLRenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL')
  @DocsEditable()
  static const int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  @DomName('WebGLRenderingContext.UNSIGNED_BYTE')
  @DocsEditable()
  static const int UNSIGNED_BYTE = 0x1401;

  @DomName('WebGLRenderingContext.UNSIGNED_INT')
  @DocsEditable()
  static const int UNSIGNED_INT = 0x1405;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT')
  @DocsEditable()
  static const int UNSIGNED_SHORT = 0x1403;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT_4_4_4_4')
  @DocsEditable()
  static const int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT_5_5_5_1')
  @DocsEditable()
  static const int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT_5_6_5')
  @DocsEditable()
  static const int UNSIGNED_SHORT_5_6_5 = 0x8363;

  @DomName('WebGLRenderingContext.VALIDATE_STATUS')
  @DocsEditable()
  static const int VALIDATE_STATUS = 0x8B83;

  @DomName('WebGLRenderingContext.VENDOR')
  @DocsEditable()
  static const int VENDOR = 0x1F00;

  @DomName('WebGLRenderingContext.VERSION')
  @DocsEditable()
  static const int VERSION = 0x1F02;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_POINTER')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_SIZE')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_TYPE')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  @DomName('WebGLRenderingContext.VERTEX_SHADER')
  @DocsEditable()
  static const int VERTEX_SHADER = 0x8B31;

  @DomName('WebGLRenderingContext.VIEWPORT')
  @DocsEditable()
  static const int VIEWPORT = 0x0BA2;

  @DomName('WebGLRenderingContext.ZERO')
  @DocsEditable()
  static const int ZERO = 0;

  @DomName('WebGLRenderingContext.canvas')
  @DocsEditable()
  @Experimental() // untriaged
  CanvasElement get canvas => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.canvas_Getter_(unwrap_jso(this)));
  
  @DomName('WebGLRenderingContext.activeTexture')
  @DocsEditable()
  void activeTexture(int texture) => _blink.BlinkWebGLRenderingContext.instance.activeTexture_Callback_1_(unwrap_jso(this), texture);
  
  @DomName('WebGLRenderingContext.attachShader')
  @DocsEditable()
  void attachShader(Program program, Shader shader) => _blink.BlinkWebGLRenderingContext.instance.attachShader_Callback_2_(unwrap_jso(this), unwrap_jso(program), unwrap_jso(shader));
  
  @DomName('WebGLRenderingContext.bindBuffer')
  @DocsEditable()
  void bindBuffer(int target, Buffer buffer) => _blink.BlinkWebGLRenderingContext.instance.bindBuffer_Callback_2_(unwrap_jso(this), target, unwrap_jso(buffer));
  
  @DomName('WebGLRenderingContext.bindFramebuffer')
  @DocsEditable()
  void bindFramebuffer(int target, Framebuffer framebuffer) => _blink.BlinkWebGLRenderingContext.instance.bindFramebuffer_Callback_2_(unwrap_jso(this), target, unwrap_jso(framebuffer));
  
  @DomName('WebGLRenderingContext.bindRenderbuffer')
  @DocsEditable()
  void bindRenderbuffer(int target, Renderbuffer renderbuffer) => _blink.BlinkWebGLRenderingContext.instance.bindRenderbuffer_Callback_2_(unwrap_jso(this), target, unwrap_jso(renderbuffer));
  
  @DomName('WebGLRenderingContext.bindTexture')
  @DocsEditable()
  void bindTexture(int target, Texture texture) => _blink.BlinkWebGLRenderingContext.instance.bindTexture_Callback_2_(unwrap_jso(this), target, unwrap_jso(texture));
  
  @DomName('WebGLRenderingContext.blendEquation')
  @DocsEditable()
  void blendEquation(int mode) => _blink.BlinkWebGLRenderingContext.instance.blendEquation_Callback_1_(unwrap_jso(this), mode);
  
  @DomName('WebGLRenderingContext.blendEquationSeparate')
  @DocsEditable()
  void blendEquationSeparate(int modeRGB, int modeAlpha) => _blink.BlinkWebGLRenderingContext.instance.blendEquationSeparate_Callback_2_(unwrap_jso(this), modeRGB, modeAlpha);
  
  @DomName('WebGLRenderingContext.blendFunc')
  @DocsEditable()
  void blendFunc(int sfactor, int dfactor) => _blink.BlinkWebGLRenderingContext.instance.blendFunc_Callback_2_(unwrap_jso(this), sfactor, dfactor);
  
  @DomName('WebGLRenderingContext.blendFuncSeparate')
  @DocsEditable()
  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) => _blink.BlinkWebGLRenderingContext.instance.blendFuncSeparate_Callback_4_(unwrap_jso(this), srcRGB, dstRGB, srcAlpha, dstAlpha);
  
  void bufferData(int target, data, int usage) {
    if ((usage is int) && (data is TypedData) && (target is int)) {
      _blink.BlinkWebGLRenderingContext.instance.bufferData_Callback_3_(unwrap_jso(this), target, unwrap_jso(data), usage);
      return;
    }
    if ((usage is int) && (data is ByteBuffer || data == null) && (target is int)) {
      _blink.BlinkWebGLRenderingContext.instance.bufferData_Callback_3_(unwrap_jso(this), target, unwrap_jso(data), usage);
      return;
    }
    throw new ArgumentError("Incorrect number or type of arguments");
  }

  @DomName('WebGLRenderingContext.checkFramebufferStatus')
  @DocsEditable()
  int checkFramebufferStatus(int target) => _blink.BlinkWebGLRenderingContext.instance.checkFramebufferStatus_Callback_1_(unwrap_jso(this), target);
  
  @DomName('WebGLRenderingContext.compileShader')
  @DocsEditable()
  void compileShader(Shader shader) => _blink.BlinkWebGLRenderingContext.instance.compileShader_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGLRenderingContext.createBuffer')
  @DocsEditable()
  Buffer createBuffer() => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.createBuffer_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGLRenderingContext.createFramebuffer')
  @DocsEditable()
  Framebuffer createFramebuffer() => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.createFramebuffer_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGLRenderingContext.createProgram')
  @DocsEditable()
  Program createProgram() => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.createProgram_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGLRenderingContext.createRenderbuffer')
  @DocsEditable()
  Renderbuffer createRenderbuffer() => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.createRenderbuffer_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGLRenderingContext.createShader')
  @DocsEditable()
  Shader createShader(int type) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.createShader_Callback_1_(unwrap_jso(this), type));
  
  @DomName('WebGLRenderingContext.createTexture')
  @DocsEditable()
  Texture createTexture() => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.createTexture_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGLRenderingContext.cullFace')
  @DocsEditable()
  void cullFace(int mode) => _blink.BlinkWebGLRenderingContext.instance.cullFace_Callback_1_(unwrap_jso(this), mode);
  
  @DomName('WebGLRenderingContext.deleteBuffer')
  @DocsEditable()
  void deleteBuffer(Buffer buffer) => _blink.BlinkWebGLRenderingContext.instance.deleteBuffer_Callback_1_(unwrap_jso(this), unwrap_jso(buffer));
  
  @DomName('WebGLRenderingContext.deleteFramebuffer')
  @DocsEditable()
  void deleteFramebuffer(Framebuffer framebuffer) => _blink.BlinkWebGLRenderingContext.instance.deleteFramebuffer_Callback_1_(unwrap_jso(this), unwrap_jso(framebuffer));
  
  @DomName('WebGLRenderingContext.deleteProgram')
  @DocsEditable()
  void deleteProgram(Program program) => _blink.BlinkWebGLRenderingContext.instance.deleteProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGLRenderingContext.deleteRenderbuffer')
  @DocsEditable()
  void deleteRenderbuffer(Renderbuffer renderbuffer) => _blink.BlinkWebGLRenderingContext.instance.deleteRenderbuffer_Callback_1_(unwrap_jso(this), unwrap_jso(renderbuffer));
  
  @DomName('WebGLRenderingContext.deleteShader')
  @DocsEditable()
  void deleteShader(Shader shader) => _blink.BlinkWebGLRenderingContext.instance.deleteShader_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGLRenderingContext.deleteTexture')
  @DocsEditable()
  void deleteTexture(Texture texture) => _blink.BlinkWebGLRenderingContext.instance.deleteTexture_Callback_1_(unwrap_jso(this), unwrap_jso(texture));
  
  @DomName('WebGLRenderingContext.depthFunc')
  @DocsEditable()
  void depthFunc(int func) => _blink.BlinkWebGLRenderingContext.instance.depthFunc_Callback_1_(unwrap_jso(this), func);
  
  @DomName('WebGLRenderingContext.detachShader')
  @DocsEditable()
  void detachShader(Program program, Shader shader) => _blink.BlinkWebGLRenderingContext.instance.detachShader_Callback_2_(unwrap_jso(this), unwrap_jso(program), unwrap_jso(shader));
  
  @DomName('WebGLRenderingContext.disable')
  @DocsEditable()
  void disable(int cap) => _blink.BlinkWebGLRenderingContext.instance.disable_Callback_1_(unwrap_jso(this), cap);
  
  @DomName('WebGLRenderingContext.enable')
  @DocsEditable()
  void enable(int cap) => _blink.BlinkWebGLRenderingContext.instance.enable_Callback_1_(unwrap_jso(this), cap);
  
  @DomName('WebGLRenderingContext.finish')
  @DocsEditable()
  void finish() => _blink.BlinkWebGLRenderingContext.instance.finish_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGLRenderingContext.flush')
  @DocsEditable()
  void flush() => _blink.BlinkWebGLRenderingContext.instance.flush_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGLRenderingContext.framebufferRenderbuffer')
  @DocsEditable()
  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, Renderbuffer renderbuffer) => _blink.BlinkWebGLRenderingContext.instance.framebufferRenderbuffer_Callback_4_(unwrap_jso(this), target, attachment, renderbuffertarget, unwrap_jso(renderbuffer));
  
  @DomName('WebGLRenderingContext.frontFace')
  @DocsEditable()
  void frontFace(int mode) => _blink.BlinkWebGLRenderingContext.instance.frontFace_Callback_1_(unwrap_jso(this), mode);
  
  @DomName('WebGLRenderingContext.generateMipmap')
  @DocsEditable()
  void generateMipmap(int target) => _blink.BlinkWebGLRenderingContext.instance.generateMipmap_Callback_1_(unwrap_jso(this), target);
  
  @DomName('WebGLRenderingContext.getAttachedShaders')
  @DocsEditable()
  List<Shader> getAttachedShaders(Program program) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getAttachedShaders_Callback_1_(unwrap_jso(this), unwrap_jso(program)));
  
  @DomName('WebGLRenderingContext.getContextAttributes')
  @DocsEditable()
   getContextAttributes() => convertNativeDictionaryToDartDictionary(wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getContextAttributes_Callback_0_(unwrap_jso(this))));
  
  @DomName('WebGLRenderingContext.getError')
  @DocsEditable()
  int getError() => _blink.BlinkWebGLRenderingContext.instance.getError_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGLRenderingContext.getProgramInfoLog')
  @DocsEditable()
  String getProgramInfoLog(Program program) => _blink.BlinkWebGLRenderingContext.instance.getProgramInfoLog_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGLRenderingContext.getShaderInfoLog')
  @DocsEditable()
  String getShaderInfoLog(Shader shader) => _blink.BlinkWebGLRenderingContext.instance.getShaderInfoLog_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGLRenderingContext.getShaderPrecisionFormat')
  @DocsEditable()
  ShaderPrecisionFormat getShaderPrecisionFormat(int shadertype, int precisiontype) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getShaderPrecisionFormat_Callback_2_(unwrap_jso(this), shadertype, precisiontype));
  
  @DomName('WebGLRenderingContext.getShaderSource')
  @DocsEditable()
  String getShaderSource(Shader shader) => _blink.BlinkWebGLRenderingContext.instance.getShaderSource_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGLRenderingContext.getSupportedExtensions')
  @DocsEditable()
  List<String> getSupportedExtensions() => _blink.BlinkWebGLRenderingContext.instance.getSupportedExtensions_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGLRenderingContext.getUniform')
  @DocsEditable()
  Object getUniform(Program program, UniformLocation location) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getUniform_Callback_2_(unwrap_jso(this), unwrap_jso(program), unwrap_jso(location)));
  
  @DomName('WebGLRenderingContext.getUniformLocation')
  @DocsEditable()
  UniformLocation getUniformLocation(Program program, String name) => wrap_jso(_blink.BlinkWebGLRenderingContext.instance.getUniformLocation_Callback_2_(unwrap_jso(this), unwrap_jso(program), name));
  
  @DomName('WebGLRenderingContext.hint')
  @DocsEditable()
  void hint(int target, int mode) => _blink.BlinkWebGLRenderingContext.instance.hint_Callback_2_(unwrap_jso(this), target, mode);
  
  @DomName('WebGLRenderingContext.linkProgram')
  @DocsEditable()
  void linkProgram(Program program) => _blink.BlinkWebGLRenderingContext.instance.linkProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGLRenderingContext.shaderSource')
  @DocsEditable()
  void shaderSource(Shader shader, String string) => _blink.BlinkWebGLRenderingContext.instance.shaderSource_Callback_2_(unwrap_jso(this), unwrap_jso(shader), string);
  
  @DomName('WebGLRenderingContext.stencilOp')
  @DocsEditable()
  void stencilOp(int fail, int zfail, int zpass) => _blink.BlinkWebGLRenderingContext.instance.stencilOp_Callback_3_(unwrap_jso(this), fail, zfail, zpass);
  
  @DomName('WebGLRenderingContext.stencilOpSeparate')
  @DocsEditable()
  void stencilOpSeparate(int face, int fail, int zfail, int zpass) => _blink.BlinkWebGLRenderingContext.instance.stencilOpSeparate_Callback_4_(unwrap_jso(this), face, fail, zfail, zpass);
  
  @DomName('WebGLRenderingContext.uniform1fv')
  @DocsEditable()
  void uniform1fv(UniformLocation location, Float32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform1fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.uniform1iv')
  @DocsEditable()
  void uniform1iv(UniformLocation location, Int32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform1iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.uniform2fv')
  @DocsEditable()
  void uniform2fv(UniformLocation location, Float32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform2fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.uniform2iv')
  @DocsEditable()
  void uniform2iv(UniformLocation location, Int32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform2iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.uniform3fv')
  @DocsEditable()
  void uniform3fv(UniformLocation location, Float32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform3fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.uniform3iv')
  @DocsEditable()
  void uniform3iv(UniformLocation location, Int32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform3iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.uniform4fv')
  @DocsEditable()
  void uniform4fv(UniformLocation location, Float32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform4fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.uniform4iv')
  @DocsEditable()
  void uniform4iv(UniformLocation location, Int32List v) => _blink.BlinkWebGLRenderingContext.instance.uniform4iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGLRenderingContext.useProgram')
  @DocsEditable()
  void useProgram(Program program) => _blink.BlinkWebGLRenderingContext.instance.useProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGLRenderingContext.validateProgram')
  @DocsEditable()
  void validateProgram(Program program) => _blink.BlinkWebGLRenderingContext.instance.validateProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  

  /**
   * Sets the currently bound texture to [data].
   *
   * [data] can be either an [ImageElement], a
   * [CanvasElement], a [VideoElement], or an [ImageData] object.
   *
   * To use [texImage2d] with a TypedData object, use [texImage2dTyped].
   *
   */
  void texImage2DUntyped(int targetTexture, int levelOfDetail, 
      int internalFormat, int format, int type, data) {
    if (data is ImageElement) {
      texImage2DImage(targetTexture, levelOfDetail, internalFormat, format,
          type, data);
    } else if (data is ImageData) {
      texImage2DImageData(targetTexture, levelOfDetail, internalFormat, format,
          type, data);
    } else if (data is CanvasElement) {
      texImage2DCanvas(targetTexture, levelOfDetail, internalFormat, format,
          type, data);
    } else {
      texImage2DVideo(targetTexture, levelOfDetail, internalFormat, format,
          type, data);
    }
  }

  /**
   * Sets the currently bound texture to [data].
   */
  void texImage2DTyped(int targetTexture, int levelOfDetail, int internalFormat,
      int width, int height, int border, int format, int type, TypedData data) {
    texImage2D(targetTexture, levelOfDetail, internalFormat,
        width, height, border, format, type, data);
  }

  /**
   * Updates a sub-rectangle of the currently bound texture to [data].
   *
   * [data] can be either an [ImageElement], a
   * [CanvasElement], a [VideoElement], or an [ImageData] object.
   *
   * To use [texSubImage2d] with a TypedData object, use [texSubImage2dTyped].
   *
   */
  void texSubImage2DUntyped(int targetTexture, int levelOfDetail, 
      int xOffset, int yOffset, int format, int type, data) {
    texSubImage2D(targetTexture, levelOfDetail, xOffset, yOffset,
        format, type, data);
  }

  /**
   * Updates a sub-rectangle of the currently bound texture to [data].
   */
  void texSubImage2DTyped(int targetTexture, int levelOfDetail,
      int xOffset, int yOffset, int width, int height, int format,
      int type, TypedData data) {
    texSubImage2D(targetTexture, levelOfDetail, xOffset, yOffset,
        width, height, format, type, data);
  }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGL2RenderingContext')
@Experimental() // untriaged
class RenderingContext2 extends DartHtmlDomObject implements _WebGL2RenderingContextBase, _WebGLRenderingContextBase {
  // To suppress missing implicit constructor warnings.
  factory RenderingContext2._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static RenderingContext2 internalCreateRenderingContext2() {
    return new RenderingContext2._internalWrap();
  }

  factory RenderingContext2._internalWrap() {
    return new RenderingContext2.internal_();
  }

  @Deprecated("Internal Use Only")
  RenderingContext2.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGL2RenderingContext.ACTIVE_ATTRIBUTES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_ATTRIBUTES = 0x8B89;

  @DomName('WebGL2RenderingContext.ACTIVE_TEXTURE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_TEXTURE = 0x84E0;

  @DomName('WebGL2RenderingContext.ACTIVE_UNIFORMS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_UNIFORMS = 0x8B86;

  @DomName('WebGL2RenderingContext.ALIASED_LINE_WIDTH_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  @DomName('WebGL2RenderingContext.ALIASED_POINT_SIZE_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALIASED_POINT_SIZE_RANGE = 0x846D;

  @DomName('WebGL2RenderingContext.ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALPHA = 0x1906;

  @DomName('WebGL2RenderingContext.ALPHA_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALPHA_BITS = 0x0D55;

  @DomName('WebGL2RenderingContext.ALWAYS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALWAYS = 0x0207;

  @DomName('WebGL2RenderingContext.ARRAY_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ARRAY_BUFFER = 0x8892;

  @DomName('WebGL2RenderingContext.ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ARRAY_BUFFER_BINDING = 0x8894;

  @DomName('WebGL2RenderingContext.ATTACHED_SHADERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ATTACHED_SHADERS = 0x8B85;

  @DomName('WebGL2RenderingContext.BACK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BACK = 0x0405;

  @DomName('WebGL2RenderingContext.BLEND')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND = 0x0BE2;

  @DomName('WebGL2RenderingContext.BLEND_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_COLOR = 0x8005;

  @DomName('WebGL2RenderingContext.BLEND_DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_DST_ALPHA = 0x80CA;

  @DomName('WebGL2RenderingContext.BLEND_DST_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_DST_RGB = 0x80C8;

  @DomName('WebGL2RenderingContext.BLEND_EQUATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION = 0x8009;

  @DomName('WebGL2RenderingContext.BLEND_EQUATION_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION_ALPHA = 0x883D;

  @DomName('WebGL2RenderingContext.BLEND_EQUATION_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION_RGB = 0x8009;

  @DomName('WebGL2RenderingContext.BLEND_SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_SRC_ALPHA = 0x80CB;

  @DomName('WebGL2RenderingContext.BLEND_SRC_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_SRC_RGB = 0x80C9;

  @DomName('WebGL2RenderingContext.BLUE_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLUE_BITS = 0x0D54;

  @DomName('WebGL2RenderingContext.BOOL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL = 0x8B56;

  @DomName('WebGL2RenderingContext.BOOL_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC2 = 0x8B57;

  @DomName('WebGL2RenderingContext.BOOL_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC3 = 0x8B58;

  @DomName('WebGL2RenderingContext.BOOL_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC4 = 0x8B59;

  @DomName('WebGL2RenderingContext.BROWSER_DEFAULT_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BROWSER_DEFAULT_WEBGL = 0x9244;

  @DomName('WebGL2RenderingContext.BUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BUFFER_SIZE = 0x8764;

  @DomName('WebGL2RenderingContext.BUFFER_USAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BUFFER_USAGE = 0x8765;

  @DomName('WebGL2RenderingContext.BYTE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BYTE = 0x1400;

  @DomName('WebGL2RenderingContext.CCW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CCW = 0x0901;

  @DomName('WebGL2RenderingContext.CLAMP_TO_EDGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CLAMP_TO_EDGE = 0x812F;

  @DomName('WebGL2RenderingContext.COLOR_ATTACHMENT0')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT0 = 0x8CE0;

  @DomName('WebGL2RenderingContext.COLOR_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_BUFFER_BIT = 0x00004000;

  @DomName('WebGL2RenderingContext.COLOR_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_CLEAR_VALUE = 0x0C22;

  @DomName('WebGL2RenderingContext.COLOR_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_WRITEMASK = 0x0C23;

  @DomName('WebGL2RenderingContext.COMPILE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPILE_STATUS = 0x8B81;

  @DomName('WebGL2RenderingContext.COMPRESSED_TEXTURE_FORMATS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  @DomName('WebGL2RenderingContext.CONSTANT_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONSTANT_ALPHA = 0x8003;

  @DomName('WebGL2RenderingContext.CONSTANT_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONSTANT_COLOR = 0x8001;

  @DomName('WebGL2RenderingContext.CONTEXT_LOST_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONTEXT_LOST_WEBGL = 0x9242;

  @DomName('WebGL2RenderingContext.CULL_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CULL_FACE = 0x0B44;

  @DomName('WebGL2RenderingContext.CULL_FACE_MODE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CULL_FACE_MODE = 0x0B45;

  @DomName('WebGL2RenderingContext.CURRENT_PROGRAM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_PROGRAM = 0x8B8D;

  @DomName('WebGL2RenderingContext.CURRENT_VERTEX_ATTRIB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_VERTEX_ATTRIB = 0x8626;

  @DomName('WebGL2RenderingContext.CW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CW = 0x0900;

  @DomName('WebGL2RenderingContext.DECR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DECR = 0x1E03;

  @DomName('WebGL2RenderingContext.DECR_WRAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DECR_WRAP = 0x8508;

  @DomName('WebGL2RenderingContext.DELETE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DELETE_STATUS = 0x8B80;

  @DomName('WebGL2RenderingContext.DEPTH_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_ATTACHMENT = 0x8D00;

  @DomName('WebGL2RenderingContext.DEPTH_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_BITS = 0x0D56;

  @DomName('WebGL2RenderingContext.DEPTH_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_BUFFER_BIT = 0x00000100;

  @DomName('WebGL2RenderingContext.DEPTH_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_CLEAR_VALUE = 0x0B73;

  @DomName('WebGL2RenderingContext.DEPTH_COMPONENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT = 0x1902;

  @DomName('WebGL2RenderingContext.DEPTH_COMPONENT16')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT16 = 0x81A5;

  @DomName('WebGL2RenderingContext.DEPTH_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_FUNC = 0x0B74;

  @DomName('WebGL2RenderingContext.DEPTH_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_RANGE = 0x0B70;

  @DomName('WebGL2RenderingContext.DEPTH_STENCIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_STENCIL = 0x84F9;

  @DomName('WebGL2RenderingContext.DEPTH_STENCIL_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  @DomName('WebGL2RenderingContext.DEPTH_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_TEST = 0x0B71;

  @DomName('WebGL2RenderingContext.DEPTH_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_WRITEMASK = 0x0B72;

  @DomName('WebGL2RenderingContext.DITHER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DITHER = 0x0BD0;

  @DomName('WebGL2RenderingContext.DONT_CARE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DONT_CARE = 0x1100;

  @DomName('WebGL2RenderingContext.DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DST_ALPHA = 0x0304;

  @DomName('WebGL2RenderingContext.DST_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DST_COLOR = 0x0306;

  @DomName('WebGL2RenderingContext.DYNAMIC_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DYNAMIC_DRAW = 0x88E8;

  @DomName('WebGL2RenderingContext.ELEMENT_ARRAY_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ELEMENT_ARRAY_BUFFER = 0x8893;

  @DomName('WebGL2RenderingContext.ELEMENT_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  @DomName('WebGL2RenderingContext.EQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int EQUAL = 0x0202;

  @DomName('WebGL2RenderingContext.FASTEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FASTEST = 0x1101;

  @DomName('WebGL2RenderingContext.FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT = 0x1406;

  @DomName('WebGL2RenderingContext.FLOAT_MAT2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT2 = 0x8B5A;

  @DomName('WebGL2RenderingContext.FLOAT_MAT3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT3 = 0x8B5B;

  @DomName('WebGL2RenderingContext.FLOAT_MAT4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT4 = 0x8B5C;

  @DomName('WebGL2RenderingContext.FLOAT_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC2 = 0x8B50;

  @DomName('WebGL2RenderingContext.FLOAT_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC3 = 0x8B51;

  @DomName('WebGL2RenderingContext.FLOAT_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC4 = 0x8B52;

  @DomName('WebGL2RenderingContext.FRAGMENT_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAGMENT_SHADER = 0x8B30;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER = 0x8D40;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_BINDING = 0x8CA6;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_COMPLETE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_COMPLETE = 0x8CD5;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_UNSUPPORTED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  @DomName('WebGL2RenderingContext.FRONT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT = 0x0404;

  @DomName('WebGL2RenderingContext.FRONT_AND_BACK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT_AND_BACK = 0x0408;

  @DomName('WebGL2RenderingContext.FRONT_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT_FACE = 0x0B46;

  @DomName('WebGL2RenderingContext.FUNC_ADD')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_ADD = 0x8006;

  @DomName('WebGL2RenderingContext.FUNC_REVERSE_SUBTRACT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_REVERSE_SUBTRACT = 0x800B;

  @DomName('WebGL2RenderingContext.FUNC_SUBTRACT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_SUBTRACT = 0x800A;

  @DomName('WebGL2RenderingContext.GENERATE_MIPMAP_HINT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GENERATE_MIPMAP_HINT = 0x8192;

  @DomName('WebGL2RenderingContext.GEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GEQUAL = 0x0206;

  @DomName('WebGL2RenderingContext.GREATER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GREATER = 0x0204;

  @DomName('WebGL2RenderingContext.GREEN_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GREEN_BITS = 0x0D53;

  @DomName('WebGL2RenderingContext.HIGH_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int HIGH_FLOAT = 0x8DF2;

  @DomName('WebGL2RenderingContext.HIGH_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int HIGH_INT = 0x8DF5;

  @DomName('WebGL2RenderingContext.IMPLEMENTATION_COLOR_READ_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;

  @DomName('WebGL2RenderingContext.IMPLEMENTATION_COLOR_READ_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;

  @DomName('WebGL2RenderingContext.INCR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INCR = 0x1E02;

  @DomName('WebGL2RenderingContext.INCR_WRAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INCR_WRAP = 0x8507;

  @DomName('WebGL2RenderingContext.INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT = 0x1404;

  @DomName('WebGL2RenderingContext.INT_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC2 = 0x8B53;

  @DomName('WebGL2RenderingContext.INT_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC3 = 0x8B54;

  @DomName('WebGL2RenderingContext.INT_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC4 = 0x8B55;

  @DomName('WebGL2RenderingContext.INVALID_ENUM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_ENUM = 0x0500;

  @DomName('WebGL2RenderingContext.INVALID_FRAMEBUFFER_OPERATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  @DomName('WebGL2RenderingContext.INVALID_OPERATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_OPERATION = 0x0502;

  @DomName('WebGL2RenderingContext.INVALID_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_VALUE = 0x0501;

  @DomName('WebGL2RenderingContext.INVERT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVERT = 0x150A;

  @DomName('WebGL2RenderingContext.KEEP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int KEEP = 0x1E00;

  @DomName('WebGL2RenderingContext.LEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LEQUAL = 0x0203;

  @DomName('WebGL2RenderingContext.LESS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LESS = 0x0201;

  @DomName('WebGL2RenderingContext.LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR = 0x2601;

  @DomName('WebGL2RenderingContext.LINEAR_MIPMAP_LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR_MIPMAP_LINEAR = 0x2703;

  @DomName('WebGL2RenderingContext.LINEAR_MIPMAP_NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR_MIPMAP_NEAREST = 0x2701;

  @DomName('WebGL2RenderingContext.LINES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINES = 0x0001;

  @DomName('WebGL2RenderingContext.LINE_LOOP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_LOOP = 0x0002;

  @DomName('WebGL2RenderingContext.LINE_STRIP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_STRIP = 0x0003;

  @DomName('WebGL2RenderingContext.LINE_WIDTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_WIDTH = 0x0B21;

  @DomName('WebGL2RenderingContext.LINK_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINK_STATUS = 0x8B82;

  @DomName('WebGL2RenderingContext.LOW_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LOW_FLOAT = 0x8DF0;

  @DomName('WebGL2RenderingContext.LOW_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LOW_INT = 0x8DF3;

  @DomName('WebGL2RenderingContext.LUMINANCE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LUMINANCE = 0x1909;

  @DomName('WebGL2RenderingContext.LUMINANCE_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LUMINANCE_ALPHA = 0x190A;

  @DomName('WebGL2RenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  @DomName('WebGL2RenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  @DomName('WebGL2RenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  @DomName('WebGL2RenderingContext.MAX_RENDERBUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_RENDERBUFFER_SIZE = 0x84E8;

  @DomName('WebGL2RenderingContext.MAX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  @DomName('WebGL2RenderingContext.MAX_TEXTURE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TEXTURE_SIZE = 0x0D33;

  @DomName('WebGL2RenderingContext.MAX_VARYING_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VARYING_VECTORS = 0x8DFC;

  @DomName('WebGL2RenderingContext.MAX_VERTEX_ATTRIBS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_ATTRIBS = 0x8869;

  @DomName('WebGL2RenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  @DomName('WebGL2RenderingContext.MAX_VERTEX_UNIFORM_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  @DomName('WebGL2RenderingContext.MAX_VIEWPORT_DIMS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VIEWPORT_DIMS = 0x0D3A;

  @DomName('WebGL2RenderingContext.MEDIUM_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MEDIUM_FLOAT = 0x8DF1;

  @DomName('WebGL2RenderingContext.MEDIUM_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MEDIUM_INT = 0x8DF4;

  @DomName('WebGL2RenderingContext.MIRRORED_REPEAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MIRRORED_REPEAT = 0x8370;

  @DomName('WebGL2RenderingContext.NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST = 0x2600;

  @DomName('WebGL2RenderingContext.NEAREST_MIPMAP_LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST_MIPMAP_LINEAR = 0x2702;

  @DomName('WebGL2RenderingContext.NEAREST_MIPMAP_NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST_MIPMAP_NEAREST = 0x2700;

  @DomName('WebGL2RenderingContext.NEVER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEVER = 0x0200;

  @DomName('WebGL2RenderingContext.NICEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NICEST = 0x1102;

  @DomName('WebGL2RenderingContext.NONE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NONE = 0;

  @DomName('WebGL2RenderingContext.NOTEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NOTEQUAL = 0x0205;

  @DomName('WebGL2RenderingContext.NO_ERROR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NO_ERROR = 0;

  @DomName('WebGL2RenderingContext.ONE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE = 1;

  @DomName('WebGL2RenderingContext.ONE_MINUS_CONSTANT_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  @DomName('WebGL2RenderingContext.ONE_MINUS_CONSTANT_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  @DomName('WebGL2RenderingContext.ONE_MINUS_DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_DST_ALPHA = 0x0305;

  @DomName('WebGL2RenderingContext.ONE_MINUS_DST_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_DST_COLOR = 0x0307;

  @DomName('WebGL2RenderingContext.ONE_MINUS_SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_SRC_ALPHA = 0x0303;

  @DomName('WebGL2RenderingContext.ONE_MINUS_SRC_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_SRC_COLOR = 0x0301;

  @DomName('WebGL2RenderingContext.OUT_OF_MEMORY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int OUT_OF_MEMORY = 0x0505;

  @DomName('WebGL2RenderingContext.PACK_ALIGNMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PACK_ALIGNMENT = 0x0D05;

  @DomName('WebGL2RenderingContext.POINTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POINTS = 0x0000;

  @DomName('WebGL2RenderingContext.POLYGON_OFFSET_FACTOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_FACTOR = 0x8038;

  @DomName('WebGL2RenderingContext.POLYGON_OFFSET_FILL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_FILL = 0x8037;

  @DomName('WebGL2RenderingContext.POLYGON_OFFSET_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_UNITS = 0x2A00;

  @DomName('WebGL2RenderingContext.RED_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RED_BITS = 0x0D52;

  @DomName('WebGL2RenderingContext.RENDERBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER = 0x8D41;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_ALPHA_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_BINDING = 0x8CA7;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_BLUE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_DEPTH_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_GREEN_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_HEIGHT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_HEIGHT = 0x8D43;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_INTERNAL_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_RED_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_RED_SIZE = 0x8D50;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_STENCIL_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_WIDTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_WIDTH = 0x8D42;

  @DomName('WebGL2RenderingContext.RENDERER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERER = 0x1F01;

  @DomName('WebGL2RenderingContext.REPEAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int REPEAT = 0x2901;

  @DomName('WebGL2RenderingContext.REPLACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int REPLACE = 0x1E01;

  @DomName('WebGL2RenderingContext.RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB = 0x1907;

  @DomName('WebGL2RenderingContext.RGB565')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB565 = 0x8D62;

  @DomName('WebGL2RenderingContext.RGB5_A1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB5_A1 = 0x8057;

  @DomName('WebGL2RenderingContext.RGBA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA = 0x1908;

  @DomName('WebGL2RenderingContext.RGBA4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA4 = 0x8056;

  @DomName('WebGL2RenderingContext.SAMPLER_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_2D = 0x8B5E;

  @DomName('WebGL2RenderingContext.SAMPLER_CUBE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_CUBE = 0x8B60;

  @DomName('WebGL2RenderingContext.SAMPLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLES = 0x80A9;

  @DomName('WebGL2RenderingContext.SAMPLE_ALPHA_TO_COVERAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  @DomName('WebGL2RenderingContext.SAMPLE_BUFFERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_BUFFERS = 0x80A8;

  @DomName('WebGL2RenderingContext.SAMPLE_COVERAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE = 0x80A0;

  @DomName('WebGL2RenderingContext.SAMPLE_COVERAGE_INVERT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE_INVERT = 0x80AB;

  @DomName('WebGL2RenderingContext.SAMPLE_COVERAGE_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE_VALUE = 0x80AA;

  @DomName('WebGL2RenderingContext.SCISSOR_BOX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SCISSOR_BOX = 0x0C10;

  @DomName('WebGL2RenderingContext.SCISSOR_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SCISSOR_TEST = 0x0C11;

  @DomName('WebGL2RenderingContext.SHADER_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHADER_TYPE = 0x8B4F;

  @DomName('WebGL2RenderingContext.SHADING_LANGUAGE_VERSION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHADING_LANGUAGE_VERSION = 0x8B8C;

  @DomName('WebGL2RenderingContext.SHORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHORT = 0x1402;

  @DomName('WebGL2RenderingContext.SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_ALPHA = 0x0302;

  @DomName('WebGL2RenderingContext.SRC_ALPHA_SATURATE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_ALPHA_SATURATE = 0x0308;

  @DomName('WebGL2RenderingContext.SRC_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_COLOR = 0x0300;

  @DomName('WebGL2RenderingContext.STATIC_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STATIC_DRAW = 0x88E4;

  @DomName('WebGL2RenderingContext.STENCIL_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_ATTACHMENT = 0x8D20;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_FAIL = 0x8801;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_FUNC = 0x8800;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_PASS_DEPTH_PASS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_REF')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_REF = 0x8CA3;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_VALUE_MASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_WRITEMASK = 0x8CA5;

  @DomName('WebGL2RenderingContext.STENCIL_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BITS = 0x0D57;

  @DomName('WebGL2RenderingContext.STENCIL_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BUFFER_BIT = 0x00000400;

  @DomName('WebGL2RenderingContext.STENCIL_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_CLEAR_VALUE = 0x0B91;

  @DomName('WebGL2RenderingContext.STENCIL_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_FAIL = 0x0B94;

  @DomName('WebGL2RenderingContext.STENCIL_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_FUNC = 0x0B92;

  @DomName('WebGL2RenderingContext.STENCIL_INDEX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_INDEX = 0x1901;

  @DomName('WebGL2RenderingContext.STENCIL_INDEX8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_INDEX8 = 0x8D48;

  @DomName('WebGL2RenderingContext.STENCIL_PASS_DEPTH_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  @DomName('WebGL2RenderingContext.STENCIL_PASS_DEPTH_PASS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  @DomName('WebGL2RenderingContext.STENCIL_REF')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_REF = 0x0B97;

  @DomName('WebGL2RenderingContext.STENCIL_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_TEST = 0x0B90;

  @DomName('WebGL2RenderingContext.STENCIL_VALUE_MASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_VALUE_MASK = 0x0B93;

  @DomName('WebGL2RenderingContext.STENCIL_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_WRITEMASK = 0x0B98;

  @DomName('WebGL2RenderingContext.STREAM_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STREAM_DRAW = 0x88E0;

  @DomName('WebGL2RenderingContext.SUBPIXEL_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SUBPIXEL_BITS = 0x0D50;

  @DomName('WebGL2RenderingContext.TEXTURE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE = 0x1702;

  @DomName('WebGL2RenderingContext.TEXTURE0')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE0 = 0x84C0;

  @DomName('WebGL2RenderingContext.TEXTURE1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE1 = 0x84C1;

  @DomName('WebGL2RenderingContext.TEXTURE10')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE10 = 0x84CA;

  @DomName('WebGL2RenderingContext.TEXTURE11')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE11 = 0x84CB;

  @DomName('WebGL2RenderingContext.TEXTURE12')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE12 = 0x84CC;

  @DomName('WebGL2RenderingContext.TEXTURE13')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE13 = 0x84CD;

  @DomName('WebGL2RenderingContext.TEXTURE14')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE14 = 0x84CE;

  @DomName('WebGL2RenderingContext.TEXTURE15')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE15 = 0x84CF;

  @DomName('WebGL2RenderingContext.TEXTURE16')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE16 = 0x84D0;

  @DomName('WebGL2RenderingContext.TEXTURE17')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE17 = 0x84D1;

  @DomName('WebGL2RenderingContext.TEXTURE18')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE18 = 0x84D2;

  @DomName('WebGL2RenderingContext.TEXTURE19')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE19 = 0x84D3;

  @DomName('WebGL2RenderingContext.TEXTURE2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE2 = 0x84C2;

  @DomName('WebGL2RenderingContext.TEXTURE20')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE20 = 0x84D4;

  @DomName('WebGL2RenderingContext.TEXTURE21')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE21 = 0x84D5;

  @DomName('WebGL2RenderingContext.TEXTURE22')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE22 = 0x84D6;

  @DomName('WebGL2RenderingContext.TEXTURE23')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE23 = 0x84D7;

  @DomName('WebGL2RenderingContext.TEXTURE24')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE24 = 0x84D8;

  @DomName('WebGL2RenderingContext.TEXTURE25')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE25 = 0x84D9;

  @DomName('WebGL2RenderingContext.TEXTURE26')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE26 = 0x84DA;

  @DomName('WebGL2RenderingContext.TEXTURE27')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE27 = 0x84DB;

  @DomName('WebGL2RenderingContext.TEXTURE28')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE28 = 0x84DC;

  @DomName('WebGL2RenderingContext.TEXTURE29')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE29 = 0x84DD;

  @DomName('WebGL2RenderingContext.TEXTURE3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE3 = 0x84C3;

  @DomName('WebGL2RenderingContext.TEXTURE30')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE30 = 0x84DE;

  @DomName('WebGL2RenderingContext.TEXTURE31')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE31 = 0x84DF;

  @DomName('WebGL2RenderingContext.TEXTURE4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE4 = 0x84C4;

  @DomName('WebGL2RenderingContext.TEXTURE5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE5 = 0x84C5;

  @DomName('WebGL2RenderingContext.TEXTURE6')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE6 = 0x84C6;

  @DomName('WebGL2RenderingContext.TEXTURE7')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE7 = 0x84C7;

  @DomName('WebGL2RenderingContext.TEXTURE8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE8 = 0x84C8;

  @DomName('WebGL2RenderingContext.TEXTURE9')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE9 = 0x84C9;

  @DomName('WebGL2RenderingContext.TEXTURE_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_2D = 0x0DE1;

  @DomName('WebGL2RenderingContext.TEXTURE_BINDING_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_2D = 0x8069;

  @DomName('WebGL2RenderingContext.TEXTURE_BINDING_CUBE_MAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP = 0x8513;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  @DomName('WebGL2RenderingContext.TEXTURE_MAG_FILTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MAG_FILTER = 0x2800;

  @DomName('WebGL2RenderingContext.TEXTURE_MIN_FILTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MIN_FILTER = 0x2801;

  @DomName('WebGL2RenderingContext.TEXTURE_WRAP_S')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_WRAP_S = 0x2802;

  @DomName('WebGL2RenderingContext.TEXTURE_WRAP_T')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_WRAP_T = 0x2803;

  @DomName('WebGL2RenderingContext.TRIANGLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLES = 0x0004;

  @DomName('WebGL2RenderingContext.TRIANGLE_FAN')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLE_FAN = 0x0006;

  @DomName('WebGL2RenderingContext.TRIANGLE_STRIP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLE_STRIP = 0x0005;

  @DomName('WebGL2RenderingContext.UNPACK_ALIGNMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_ALIGNMENT = 0x0CF5;

  @DomName('WebGL2RenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  @DomName('WebGL2RenderingContext.UNPACK_FLIP_Y_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_FLIP_Y_WEBGL = 0x9240;

  @DomName('WebGL2RenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  @DomName('WebGL2RenderingContext.UNSIGNED_BYTE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_BYTE = 0x1401;

  @DomName('WebGL2RenderingContext.UNSIGNED_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT = 0x1405;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT = 0x1403;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT_4_4_4_4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT_5_5_5_1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT_5_6_5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_5_6_5 = 0x8363;

  @DomName('WebGL2RenderingContext.VALIDATE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VALIDATE_STATUS = 0x8B83;

  @DomName('WebGL2RenderingContext.VENDOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VENDOR = 0x1F00;

  @DomName('WebGL2RenderingContext.VERSION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERSION = 0x1F02;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_POINTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  @DomName('WebGL2RenderingContext.VERTEX_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_SHADER = 0x8B31;

  @DomName('WebGL2RenderingContext.VIEWPORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VIEWPORT = 0x0BA2;

  @DomName('WebGL2RenderingContext.ZERO')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ZERO = 0;

  @DomName('WebGL2RenderingContext.beginQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void beginQuery(int target, Query query) => _blink.BlinkWebGL2RenderingContext.instance.beginQuery_Callback_2_(unwrap_jso(this), target, unwrap_jso(query));
  
  @DomName('WebGL2RenderingContext.beginTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void beginTransformFeedback(int primitiveMode) => _blink.BlinkWebGL2RenderingContext.instance.beginTransformFeedback_Callback_1_(unwrap_jso(this), primitiveMode);
  
  @DomName('WebGL2RenderingContext.bindTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void bindTransformFeedback(int target, TransformFeedback feedback) => _blink.BlinkWebGL2RenderingContext.instance.bindTransformFeedback_Callback_2_(unwrap_jso(this), target, unwrap_jso(feedback));
  
  @DomName('WebGL2RenderingContext.bindVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  void bindVertexArray(VertexArrayObject vertexArray) => _blink.BlinkWebGL2RenderingContext.instance.bindVertexArray_Callback_1_(unwrap_jso(this), unwrap_jso(vertexArray));
  
  @DomName('WebGL2RenderingContext.createQuery')
  @DocsEditable()
  @Experimental() // untriaged
  Query createQuery() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createQuery_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.createSampler')
  @DocsEditable()
  @Experimental() // untriaged
  Sampler createSampler() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createSampler_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.createTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  TransformFeedback createTransformFeedback() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createTransformFeedback_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.createVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  VertexArrayObject createVertexArray() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createVertexArray_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.deleteQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteQuery(Query query) => _blink.BlinkWebGL2RenderingContext.instance.deleteQuery_Callback_1_(unwrap_jso(this), unwrap_jso(query));
  
  @DomName('WebGL2RenderingContext.deleteSampler')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteSampler(Sampler sampler) => _blink.BlinkWebGL2RenderingContext.instance.deleteSampler_Callback_1_(unwrap_jso(this), unwrap_jso(sampler));
  
  @DomName('WebGL2RenderingContext.deleteSync')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteSync(Sync sync) => _blink.BlinkWebGL2RenderingContext.instance.deleteSync_Callback_1_(unwrap_jso(this), unwrap_jso(sync));
  
  @DomName('WebGL2RenderingContext.deleteTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteTransformFeedback(TransformFeedback feedback) => _blink.BlinkWebGL2RenderingContext.instance.deleteTransformFeedback_Callback_1_(unwrap_jso(this), unwrap_jso(feedback));
  
  @DomName('WebGL2RenderingContext.deleteVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteVertexArray(VertexArrayObject vertexArray) => _blink.BlinkWebGL2RenderingContext.instance.deleteVertexArray_Callback_1_(unwrap_jso(this), unwrap_jso(vertexArray));
  
  @DomName('WebGL2RenderingContext.drawBuffers')
  @DocsEditable()
  @Experimental() // untriaged
  void drawBuffers(List<int> buffers) => _blink.BlinkWebGL2RenderingContext.instance.drawBuffers_Callback_1_(unwrap_jso(this), buffers);
  
  @DomName('WebGL2RenderingContext.endQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void endQuery(int target) => _blink.BlinkWebGL2RenderingContext.instance.endQuery_Callback_1_(unwrap_jso(this), target);
  
  @DomName('WebGL2RenderingContext.endTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void endTransformFeedback() => _blink.BlinkWebGL2RenderingContext.instance.endTransformFeedback_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGL2RenderingContext.getInternalformatParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getInternalformatParameter(int target, int internalformat, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getInternalformatParameter_Callback_3_(unwrap_jso(this), target, internalformat, pname));
  
  @DomName('WebGL2RenderingContext.getQuery')
  @DocsEditable()
  @Experimental() // untriaged
  Query getQuery(int target, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getQuery_Callback_2_(unwrap_jso(this), target, pname));
  
  @DomName('WebGL2RenderingContext.getQueryParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getQueryParameter(Query query, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getQueryParameter_Callback_2_(unwrap_jso(this), unwrap_jso(query), pname));
  
  @DomName('WebGL2RenderingContext.getSamplerParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getSamplerParameter(Sampler sampler, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getSamplerParameter_Callback_2_(unwrap_jso(this), unwrap_jso(sampler), pname));
  
  @DomName('WebGL2RenderingContext.getSyncParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getSyncParameter(Sync sync, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getSyncParameter_Callback_2_(unwrap_jso(this), unwrap_jso(sync), pname));
  
  @DomName('WebGL2RenderingContext.invalidateFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void invalidateFramebuffer(int target, List<int> attachments) => _blink.BlinkWebGL2RenderingContext.instance.invalidateFramebuffer_Callback_2_(unwrap_jso(this), target, attachments);
  
  @DomName('WebGL2RenderingContext.pauseTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void pauseTransformFeedback() => _blink.BlinkWebGL2RenderingContext.instance.pauseTransformFeedback_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGL2RenderingContext.readBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void readBuffer(int mode) => _blink.BlinkWebGL2RenderingContext.instance.readBuffer_Callback_1_(unwrap_jso(this), mode);
  
  @DomName('WebGL2RenderingContext.resumeTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void resumeTransformFeedback() => _blink.BlinkWebGL2RenderingContext.instance.resumeTransformFeedback_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGL2RenderingContext.transformFeedbackVaryings')
  @DocsEditable()
  @Experimental() // untriaged
  void transformFeedbackVaryings(Program program, List<String> varyings, int bufferMode) => _blink.BlinkWebGL2RenderingContext.instance.transformFeedbackVaryings_Callback_3_(unwrap_jso(this), unwrap_jso(program), varyings, bufferMode);
  
  @DomName('WebGL2RenderingContext.canvas')
  @DocsEditable()
  @Experimental() // untriaged
  CanvasElement get canvas => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.canvas_Getter_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.activeTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void activeTexture(int texture) => _blink.BlinkWebGL2RenderingContext.instance.activeTexture_Callback_1_(unwrap_jso(this), texture);
  
  @DomName('WebGL2RenderingContext.attachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void attachShader(Program program, Shader shader) => _blink.BlinkWebGL2RenderingContext.instance.attachShader_Callback_2_(unwrap_jso(this), unwrap_jso(program), unwrap_jso(shader));
  
  @DomName('WebGL2RenderingContext.bindBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindBuffer(int target, Buffer buffer) => _blink.BlinkWebGL2RenderingContext.instance.bindBuffer_Callback_2_(unwrap_jso(this), target, unwrap_jso(buffer));
  
  @DomName('WebGL2RenderingContext.bindFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindFramebuffer(int target, Framebuffer framebuffer) => _blink.BlinkWebGL2RenderingContext.instance.bindFramebuffer_Callback_2_(unwrap_jso(this), target, unwrap_jso(framebuffer));
  
  @DomName('WebGL2RenderingContext.bindRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindRenderbuffer(int target, Renderbuffer renderbuffer) => _blink.BlinkWebGL2RenderingContext.instance.bindRenderbuffer_Callback_2_(unwrap_jso(this), target, unwrap_jso(renderbuffer));
  
  @DomName('WebGL2RenderingContext.bindTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void bindTexture(int target, Texture texture) => _blink.BlinkWebGL2RenderingContext.instance.bindTexture_Callback_2_(unwrap_jso(this), target, unwrap_jso(texture));
  
  @DomName('WebGL2RenderingContext.blendEquation')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquation(int mode) => _blink.BlinkWebGL2RenderingContext.instance.blendEquation_Callback_1_(unwrap_jso(this), mode);
  
  @DomName('WebGL2RenderingContext.blendEquationSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquationSeparate(int modeRGB, int modeAlpha) => _blink.BlinkWebGL2RenderingContext.instance.blendEquationSeparate_Callback_2_(unwrap_jso(this), modeRGB, modeAlpha);
  
  @DomName('WebGL2RenderingContext.blendFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFunc(int sfactor, int dfactor) => _blink.BlinkWebGL2RenderingContext.instance.blendFunc_Callback_2_(unwrap_jso(this), sfactor, dfactor);
  
  @DomName('WebGL2RenderingContext.blendFuncSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) => _blink.BlinkWebGL2RenderingContext.instance.blendFuncSeparate_Callback_4_(unwrap_jso(this), srcRGB, dstRGB, srcAlpha, dstAlpha);
  
  void bufferData(int target, data, int usage) {
    if ((usage is int) && (data is TypedData) && (target is int)) {
      _blink.BlinkWebGL2RenderingContext.instance.bufferData_Callback_3_(unwrap_jso(this), target, unwrap_jso(data), usage);
      return;
    }
    if ((usage is int) && (data is ByteBuffer || data == null) && (target is int)) {
      _blink.BlinkWebGL2RenderingContext.instance.bufferData_Callback_3_(unwrap_jso(this), target, unwrap_jso(data), usage);
      return;
    }
    throw new ArgumentError("Incorrect number or type of arguments");
  }

  @DomName('WebGL2RenderingContext.checkFramebufferStatus')
  @DocsEditable()
  @Experimental() // untriaged
  int checkFramebufferStatus(int target) => _blink.BlinkWebGL2RenderingContext.instance.checkFramebufferStatus_Callback_1_(unwrap_jso(this), target);
  
  @DomName('WebGL2RenderingContext.compileShader')
  @DocsEditable()
  @Experimental() // untriaged
  void compileShader(Shader shader) => _blink.BlinkWebGL2RenderingContext.instance.compileShader_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGL2RenderingContext.createBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Buffer createBuffer() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createBuffer_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.createFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Framebuffer createFramebuffer() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createFramebuffer_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.createProgram')
  @DocsEditable()
  @Experimental() // untriaged
  Program createProgram() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createProgram_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.createRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Renderbuffer createRenderbuffer() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createRenderbuffer_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.createShader')
  @DocsEditable()
  @Experimental() // untriaged
  Shader createShader(int type) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createShader_Callback_1_(unwrap_jso(this), type));
  
  @DomName('WebGL2RenderingContext.createTexture')
  @DocsEditable()
  @Experimental() // untriaged
  Texture createTexture() => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.createTexture_Callback_0_(unwrap_jso(this)));
  
  @DomName('WebGL2RenderingContext.cullFace')
  @DocsEditable()
  @Experimental() // untriaged
  void cullFace(int mode) => _blink.BlinkWebGL2RenderingContext.instance.cullFace_Callback_1_(unwrap_jso(this), mode);
  
  @DomName('WebGL2RenderingContext.deleteBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteBuffer(Buffer buffer) => _blink.BlinkWebGL2RenderingContext.instance.deleteBuffer_Callback_1_(unwrap_jso(this), unwrap_jso(buffer));
  
  @DomName('WebGL2RenderingContext.deleteFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteFramebuffer(Framebuffer framebuffer) => _blink.BlinkWebGL2RenderingContext.instance.deleteFramebuffer_Callback_1_(unwrap_jso(this), unwrap_jso(framebuffer));
  
  @DomName('WebGL2RenderingContext.deleteProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteProgram(Program program) => _blink.BlinkWebGL2RenderingContext.instance.deleteProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGL2RenderingContext.deleteRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteRenderbuffer(Renderbuffer renderbuffer) => _blink.BlinkWebGL2RenderingContext.instance.deleteRenderbuffer_Callback_1_(unwrap_jso(this), unwrap_jso(renderbuffer));
  
  @DomName('WebGL2RenderingContext.deleteShader')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteShader(Shader shader) => _blink.BlinkWebGL2RenderingContext.instance.deleteShader_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGL2RenderingContext.deleteTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteTexture(Texture texture) => _blink.BlinkWebGL2RenderingContext.instance.deleteTexture_Callback_1_(unwrap_jso(this), unwrap_jso(texture));
  
  @DomName('WebGL2RenderingContext.depthFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void depthFunc(int func) => _blink.BlinkWebGL2RenderingContext.instance.depthFunc_Callback_1_(unwrap_jso(this), func);
  
  @DomName('WebGL2RenderingContext.detachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void detachShader(Program program, Shader shader) => _blink.BlinkWebGL2RenderingContext.instance.detachShader_Callback_2_(unwrap_jso(this), unwrap_jso(program), unwrap_jso(shader));
  
  @DomName('WebGL2RenderingContext.disable')
  @DocsEditable()
  @Experimental() // untriaged
  void disable(int cap) => _blink.BlinkWebGL2RenderingContext.instance.disable_Callback_1_(unwrap_jso(this), cap);
  
  @DomName('WebGL2RenderingContext.enable')
  @DocsEditable()
  @Experimental() // untriaged
  void enable(int cap) => _blink.BlinkWebGL2RenderingContext.instance.enable_Callback_1_(unwrap_jso(this), cap);
  
  @DomName('WebGL2RenderingContext.finish')
  @DocsEditable()
  @Experimental() // untriaged
  void finish() => _blink.BlinkWebGL2RenderingContext.instance.finish_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGL2RenderingContext.flush')
  @DocsEditable()
  @Experimental() // untriaged
  void flush() => _blink.BlinkWebGL2RenderingContext.instance.flush_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGL2RenderingContext.framebufferRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, Renderbuffer renderbuffer) => _blink.BlinkWebGL2RenderingContext.instance.framebufferRenderbuffer_Callback_4_(unwrap_jso(this), target, attachment, renderbuffertarget, unwrap_jso(renderbuffer));
  
  @DomName('WebGL2RenderingContext.frontFace')
  @DocsEditable()
  @Experimental() // untriaged
  void frontFace(int mode) => _blink.BlinkWebGL2RenderingContext.instance.frontFace_Callback_1_(unwrap_jso(this), mode);
  
  @DomName('WebGL2RenderingContext.generateMipmap')
  @DocsEditable()
  @Experimental() // untriaged
  void generateMipmap(int target) => _blink.BlinkWebGL2RenderingContext.instance.generateMipmap_Callback_1_(unwrap_jso(this), target);
  
  @DomName('WebGL2RenderingContext.getAttachedShaders')
  @DocsEditable()
  @Experimental() // untriaged
  List<Shader> getAttachedShaders(Program program) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getAttachedShaders_Callback_1_(unwrap_jso(this), unwrap_jso(program)));
  
  @DomName('WebGL2RenderingContext.getBufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getBufferParameter(int target, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getBufferParameter_Callback_2_(unwrap_jso(this), target, pname));
  
  @DomName('WebGL2RenderingContext.getContextAttributes')
  @DocsEditable()
  @Experimental() // untriaged
   getContextAttributes() => convertNativeDictionaryToDartDictionary(wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getContextAttributes_Callback_0_(unwrap_jso(this))));
  
  @DomName('WebGL2RenderingContext.getError')
  @DocsEditable()
  @Experimental() // untriaged
  int getError() => _blink.BlinkWebGL2RenderingContext.instance.getError_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGL2RenderingContext.getExtension')
  @DocsEditable()
  @Experimental() // untriaged
  Object getExtension(String name) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getExtension_Callback_1_(unwrap_jso(this), name));
  
  @DomName('WebGL2RenderingContext.getFramebufferAttachmentParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getFramebufferAttachmentParameter_Callback_3_(unwrap_jso(this), target, attachment, pname));
  
  @DomName('WebGL2RenderingContext.getParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getParameter(int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getParameter_Callback_1_(unwrap_jso(this), pname));
  
  @DomName('WebGL2RenderingContext.getProgramInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getProgramInfoLog(Program program) => _blink.BlinkWebGL2RenderingContext.instance.getProgramInfoLog_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGL2RenderingContext.getProgramParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getProgramParameter(Program program, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getProgramParameter_Callback_2_(unwrap_jso(this), unwrap_jso(program), pname));
  
  @DomName('WebGL2RenderingContext.getRenderbufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getRenderbufferParameter(int target, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getRenderbufferParameter_Callback_2_(unwrap_jso(this), target, pname));
  
  @DomName('WebGL2RenderingContext.getShaderInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderInfoLog(Shader shader) => _blink.BlinkWebGL2RenderingContext.instance.getShaderInfoLog_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGL2RenderingContext.getShaderParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getShaderParameter(Shader shader, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getShaderParameter_Callback_2_(unwrap_jso(this), unwrap_jso(shader), pname));
  
  @DomName('WebGL2RenderingContext.getShaderPrecisionFormat')
  @DocsEditable()
  @Experimental() // untriaged
  ShaderPrecisionFormat getShaderPrecisionFormat(int shadertype, int precisiontype) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getShaderPrecisionFormat_Callback_2_(unwrap_jso(this), shadertype, precisiontype));
  
  @DomName('WebGL2RenderingContext.getShaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderSource(Shader shader) => _blink.BlinkWebGL2RenderingContext.instance.getShaderSource_Callback_1_(unwrap_jso(this), unwrap_jso(shader));
  
  @DomName('WebGL2RenderingContext.getSupportedExtensions')
  @DocsEditable()
  @Experimental() // untriaged
  List<String> getSupportedExtensions() => _blink.BlinkWebGL2RenderingContext.instance.getSupportedExtensions_Callback_0_(unwrap_jso(this));
  
  @DomName('WebGL2RenderingContext.getTexParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getTexParameter(int target, int pname) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getTexParameter_Callback_2_(unwrap_jso(this), target, pname));
  
  @DomName('WebGL2RenderingContext.getUniform')
  @DocsEditable()
  @Experimental() // untriaged
  Object getUniform(Program program, UniformLocation location) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getUniform_Callback_2_(unwrap_jso(this), unwrap_jso(program), unwrap_jso(location)));
  
  @DomName('WebGL2RenderingContext.getUniformLocation')
  @DocsEditable()
  @Experimental() // untriaged
  UniformLocation getUniformLocation(Program program, String name) => wrap_jso(_blink.BlinkWebGL2RenderingContext.instance.getUniformLocation_Callback_2_(unwrap_jso(this), unwrap_jso(program), name));
  
  @DomName('WebGL2RenderingContext.hint')
  @DocsEditable()
  @Experimental() // untriaged
  void hint(int target, int mode) => _blink.BlinkWebGL2RenderingContext.instance.hint_Callback_2_(unwrap_jso(this), target, mode);
  
  @DomName('WebGL2RenderingContext.linkProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void linkProgram(Program program) => _blink.BlinkWebGL2RenderingContext.instance.linkProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGL2RenderingContext.shaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  void shaderSource(Shader shader, String string) => _blink.BlinkWebGL2RenderingContext.instance.shaderSource_Callback_2_(unwrap_jso(this), unwrap_jso(shader), string);
  
  @DomName('WebGL2RenderingContext.stencilOp')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOp(int fail, int zfail, int zpass) => _blink.BlinkWebGL2RenderingContext.instance.stencilOp_Callback_3_(unwrap_jso(this), fail, zfail, zpass);
  
  @DomName('WebGL2RenderingContext.stencilOpSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOpSeparate(int face, int fail, int zfail, int zpass) => _blink.BlinkWebGL2RenderingContext.instance.stencilOpSeparate_Callback_4_(unwrap_jso(this), face, fail, zfail, zpass);
  
  @DomName('WebGL2RenderingContext.uniform1fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1fv(UniformLocation location, Float32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform1fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.uniform1iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1iv(UniformLocation location, Int32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform1iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.uniform2fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2fv(UniformLocation location, Float32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform2fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.uniform2iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2iv(UniformLocation location, Int32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform2iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.uniform3fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3fv(UniformLocation location, Float32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform3fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.uniform3iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3iv(UniformLocation location, Int32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform3iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.uniform4fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4fv(UniformLocation location, Float32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform4fv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.uniform4iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4iv(UniformLocation location, Int32List v) => _blink.BlinkWebGL2RenderingContext.instance.uniform4iv_Callback_2_(unwrap_jso(this), unwrap_jso(location), unwrap_jso(v));
  
  @DomName('WebGL2RenderingContext.useProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void useProgram(Program program) => _blink.BlinkWebGL2RenderingContext.instance.useProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
  @DomName('WebGL2RenderingContext.validateProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void validateProgram(Program program) => _blink.BlinkWebGL2RenderingContext.instance.validateProgram_Callback_1_(unwrap_jso(this), unwrap_jso(program));
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLSampler')
@Experimental() // untriaged
class Sampler extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Sampler._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Sampler internalCreateSampler() {
    return new Sampler._internalWrap();
  }

  factory Sampler._internalWrap() {
    return new Sampler.internal_();
  }

  @Deprecated("Internal Use Only")
  Sampler.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLShader')
class Shader extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Shader._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Shader internalCreateShader() {
    return new Shader._internalWrap();
  }

  factory Shader._internalWrap() {
    return new Shader.internal_();
  }

  @Deprecated("Internal Use Only")
  Shader.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLShaderPrecisionFormat')
class ShaderPrecisionFormat extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory ShaderPrecisionFormat._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static ShaderPrecisionFormat internalCreateShaderPrecisionFormat() {
    return new ShaderPrecisionFormat._internalWrap();
  }

  factory ShaderPrecisionFormat._internalWrap() {
    return new ShaderPrecisionFormat.internal_();
  }

  @Deprecated("Internal Use Only")
  ShaderPrecisionFormat.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

  @DomName('WebGLShaderPrecisionFormat.precision')
  @DocsEditable()
  int get precision => _blink.BlinkWebGLShaderPrecisionFormat.instance.precision_Getter_(unwrap_jso(this));
  
  @DomName('WebGLShaderPrecisionFormat.rangeMax')
  @DocsEditable()
  int get rangeMax => _blink.BlinkWebGLShaderPrecisionFormat.instance.rangeMax_Getter_(unwrap_jso(this));
  
  @DomName('WebGLShaderPrecisionFormat.rangeMin')
  @DocsEditable()
  int get rangeMin => _blink.BlinkWebGLShaderPrecisionFormat.instance.rangeMin_Getter_(unwrap_jso(this));
  
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLSync')
@Experimental() // untriaged
class Sync extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Sync._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Sync internalCreateSync() {
    return new Sync._internalWrap();
  }

  factory Sync._internalWrap() {
    return new Sync.internal_();
  }

  @Deprecated("Internal Use Only")
  Sync.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLTexture')
class Texture extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory Texture._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static Texture internalCreateTexture() {
    return new Texture._internalWrap();
  }

  factory Texture._internalWrap() {
    return new Texture.internal_();
  }

  @Deprecated("Internal Use Only")
  Texture.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLTransformFeedback')
@Experimental() // untriaged
class TransformFeedback extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory TransformFeedback._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static TransformFeedback internalCreateTransformFeedback() {
    return new TransformFeedback._internalWrap();
  }

  factory TransformFeedback._internalWrap() {
    return new TransformFeedback.internal_();
  }

  @Deprecated("Internal Use Only")
  TransformFeedback.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLUniformLocation')
class UniformLocation extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory UniformLocation._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static UniformLocation internalCreateUniformLocation() {
    return new UniformLocation._internalWrap();
  }

  factory UniformLocation._internalWrap() {
    return new UniformLocation.internal_();
  }

  @Deprecated("Internal Use Only")
  UniformLocation.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLVertexArrayObject')
@Experimental() // untriaged
class VertexArrayObject extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory VertexArrayObject._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static VertexArrayObject internalCreateVertexArrayObject() {
    return new VertexArrayObject._internalWrap();
  }

  factory VertexArrayObject._internalWrap() {
    return new VertexArrayObject.internal_();
  }

  @Deprecated("Internal Use Only")
  VertexArrayObject.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLVertexArrayObjectOES')
// http://www.khronos.org/registry/webgl/extensions/OES_vertex_array_object/
@Experimental() // experimental
class VertexArrayObjectOes extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory VertexArrayObjectOes._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static VertexArrayObjectOes internalCreateVertexArrayObjectOes() {
    return new VertexArrayObjectOes._internalWrap();
  }

  factory VertexArrayObjectOes._internalWrap() {
    return new VertexArrayObjectOes.internal_();
  }

  @Deprecated("Internal Use Only")
  VertexArrayObjectOes.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGL2RenderingContextBase')
@Experimental() // untriaged
class _WebGL2RenderingContextBase extends DartHtmlDomObject implements _WebGLRenderingContextBase {
  // To suppress missing implicit constructor warnings.
  factory _WebGL2RenderingContextBase._() { throw new UnsupportedError("Not supported"); }

  @Deprecated("Internal Use Only")
  static _WebGL2RenderingContextBase internalCreate_WebGL2RenderingContextBase() {
    return new _WebGL2RenderingContextBase._internalWrap();
  }

  factory _WebGL2RenderingContextBase._internalWrap() {
    return new _WebGL2RenderingContextBase.internal_();
  }

  @Deprecated("Internal Use Only")
  _WebGL2RenderingContextBase.internal_() { }

  bool operator ==(other) => unwrap_jso(other) == unwrap_jso(this) || identical(this, other);
  int get hashCode => unwrap_jso(this).hashCode;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.


@DocsEditable()
@DomName('WebGLRenderingContextBase')
@Experimental() // untriaged
class _WebGLRenderingContextBase extends DartHtmlDomObject {
  // To suppress missing implicit constructor warnings.
  factory _WebGLRenderingContextBase._() { throw new UnsupportedError("Not supported"); }

}
