.class public final Lb2/o;
.super Ll2/c;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/c<",
        "Ld2/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ll2/b;

.field public final synthetic d:Ll2/c;

.field public final synthetic e:Ld2/b;


# direct methods
.method public constructor <init>(Ll2/b;Ll2/c;Ld2/b;)V
    .locals 0

    iput-object p1, p0, Lb2/o;->c:Ll2/b;

    iput-object p2, p0, Lb2/o;->d:Ll2/c;

    iput-object p3, p0, Lb2/o;->e:Ld2/b;

    invoke-direct {p0}, Ll2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll2/b;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lb2/o;->c:Ll2/b;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ll2/b;->a:Ljava/lang/Object;

    .line 4
    check-cast v1, Ld2/b;

    iget-object v1, v1, Ld2/b;->a:Ljava/lang/String;

    .line 5
    iget-object v2, p1, Ll2/b;->b:Ljava/lang/Object;

    .line 6
    check-cast v2, Ld2/b;

    iget-object v2, v2, Ld2/b;->a:Ljava/lang/String;

    .line 7
    iget v3, p1, Ll2/b;->c:F

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object v1, v0, Ll2/b;->a:Ljava/lang/Object;

    .line 10
    iput-object v2, v0, Ll2/b;->b:Ljava/lang/Object;

    .line 11
    iput v3, v0, Ll2/b;->c:F

    .line 12
    iget-object v1, p0, Lb2/o;->d:Ll2/c;

    invoke-virtual {v1, v0}, Ll2/c;->a(Ll2/b;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 13
    iget v0, p1, Ll2/b;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 14
    iget-object p1, p1, Ll2/b;->b:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p1, Ll2/b;->a:Ljava/lang/Object;

    .line 16
    :goto_0
    check-cast p1, Ld2/b;

    .line 17
    iget-object v1, p0, Lb2/o;->e:Ld2/b;

    iget-object v3, p1, Ld2/b;->b:Ljava/lang/String;

    iget v4, p1, Ld2/b;->c:F

    iget v5, p1, Ld2/b;->d:I

    iget v6, p1, Ld2/b;->e:I

    iget v7, p1, Ld2/b;->f:F

    iget v8, p1, Ld2/b;->g:F

    iget v9, p1, Ld2/b;->h:I

    iget v10, p1, Ld2/b;->i:I

    iget v11, p1, Ld2/b;->j:F

    iget-boolean v12, p1, Ld2/b;->k:Z

    invoke-virtual/range {v1 .. v12}, Ld2/b;->a(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZ)V

    .line 18
    iget-object p1, p0, Lb2/o;->e:Ld2/b;

    return-object p1
.end method
