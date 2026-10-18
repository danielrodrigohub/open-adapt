.class public final Lm5/k;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/k$b;,
        Lm5/k$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lm5/k$a;

.field public final c:[Lm5/k$b;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm5/k$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm5/k$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, v0, Lm5/k;->a:I

    .line 3
    invoke-static {}, Lda/e;->f()V

    const v2, 0x8b31

    move-object/from16 v3, p1

    .line 4
    invoke-static {v1, v2, v3}, Lm5/k;->a(IILjava/lang/String;)V

    const v2, 0x8b30

    move-object/from16 v3, p2

    .line 5
    invoke-static {v1, v2, v3}, Lm5/k;->a(IILjava/lang/String;)V

    .line 6
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const v5, 0x8b82

    .line 7
    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v3, v4

    if-eq v3, v2, :cond_0

    const-string v3, "Unable to link shader program: \n"

    .line 8
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lda/e;->i(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lm5/k;->d:Ljava/util/HashMap;

    new-array v3, v2, [I

    const v5, 0x8b89

    .line 13
    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v3, v4

    .line 14
    new-array v1, v1, [Lm5/k$a;

    iput-object v1, v0, Lm5/k;->b:[Lm5/k$a;

    move v1, v4

    :goto_0
    aget v5, v3, v4

    if-ge v1, v5, :cond_3

    .line 15
    iget v15, v0, Lm5/k;->a:I

    new-array v5, v2, [I

    const v6, 0x8b8a

    .line 16
    invoke-static {v15, v6, v5, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v14, v5, v4

    .line 17
    new-array v13, v14, [B

    aget v7, v5, v4

    new-array v8, v2, [I

    new-array v10, v2, [I

    new-array v12, v2, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move v5, v15

    move v6, v1

    move-object/from16 p1, v13

    move v13, v2

    move v2, v14

    move-object/from16 v14, p1

    move/from16 v17, v15

    move/from16 v15, v16

    .line 18
    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 19
    new-instance v5, Ljava/lang/String;

    move v14, v4

    :goto_1
    if-ge v14, v2, :cond_2

    move-object/from16 v6, p1

    .line 20
    aget-byte v7, v6, v14

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 p1, v6

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    move v14, v2

    .line 21
    :goto_2
    invoke-direct {v5, v6, v4, v14}, Ljava/lang/String;-><init>([BII)V

    move/from16 v2, v17

    .line 22
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 23
    new-instance v2, Lm5/k$a;

    invoke-direct {v2, v5}, Lm5/k$a;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v6, v0, Lm5/k;->b:[Lm5/k$a;

    aput-object v2, v6, v1

    .line 25
    iget-object v6, v0, Lm5/k;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    .line 26
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lm5/k;->e:Ljava/util/HashMap;

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 27
    iget v3, v0, Lm5/k;->a:I

    const v5, 0x8b86

    invoke-static {v3, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v2, v4

    .line 28
    new-array v3, v3, [Lm5/k$b;

    iput-object v3, v0, Lm5/k;->c:[Lm5/k$b;

    move v3, v4

    :goto_3
    aget v5, v2, v4

    if-ge v3, v5, :cond_6

    .line 29
    iget v15, v0, Lm5/k;->a:I

    new-array v5, v1, [I

    const v6, 0x8b87

    .line 30
    invoke-static {v15, v6, v5, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v12, v1, [I

    aget v14, v5, v4

    .line 31
    new-array v13, v14, [B

    aget v7, v5, v4

    new-array v8, v1, [I

    new-array v10, v1, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    move v5, v15

    move v6, v3

    move-object/from16 p1, v13

    move v13, v1

    move v1, v14

    move-object/from16 v14, p1

    move/from16 v18, v15

    move/from16 v15, v16

    .line 32
    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 33
    new-instance v5, Ljava/lang/String;

    move v14, v4

    :goto_4
    if-ge v14, v1, :cond_5

    move-object/from16 v6, p1

    .line 34
    aget-byte v7, v6, v14

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 p1, v6

    goto :goto_4

    :cond_5
    move-object/from16 v6, p1

    move v14, v1

    .line 35
    :goto_5
    invoke-direct {v5, v6, v4, v14}, Ljava/lang/String;-><init>([BII)V

    move/from16 v1, v18

    .line 36
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 37
    new-instance v1, Lm5/k$b;

    invoke-direct {v1, v5}, Lm5/k$b;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v6, v0, Lm5/k;->c:[Lm5/k$b;

    aput-object v1, v6, v3

    .line 39
    iget-object v6, v0, Lm5/k;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto :goto_3

    .line 40
    :cond_6
    invoke-static {}, Lda/e;->f()V

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 2
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const v3, 0x8b81

    .line 4
    invoke-static {p1, v3, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lda/e;->i(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 7
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 8
    invoke-static {}, Lda/e;->f()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lm5/k;->a:I

    .line 2
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    invoke-static {}, Lda/e;->f()V

    return p1
.end method

.method public final c(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lm5/k;->a:I

    .line 2
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method
