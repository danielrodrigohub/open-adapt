.class public final Lr2/y;
.super Ljava/lang/Object;
.source "ResourceCacheKey.java"

# interfaces
.implements Lp2/f;


# static fields
.field public static final j:Ll3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/i<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls2/b;

.field public final c:Lp2/f;

.field public final d:Lp2/f;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Lp2/h;

.field public final i:Lp2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll3/i;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Ll3/i;-><init>(J)V

    sput-object v0, Lr2/y;->j:Ll3/i;

    return-void
.end method

.method public constructor <init>(Ls2/b;Lp2/f;Lp2/f;IILp2/l;Ljava/lang/Class;Lp2/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/b;",
            "Lp2/f;",
            "Lp2/f;",
            "II",
            "Lp2/l<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lp2/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr2/y;->b:Ls2/b;

    .line 3
    iput-object p2, p0, Lr2/y;->c:Lp2/f;

    .line 4
    iput-object p3, p0, Lr2/y;->d:Lp2/f;

    .line 5
    iput p4, p0, Lr2/y;->e:I

    .line 6
    iput p5, p0, Lr2/y;->f:I

    .line 7
    iput-object p6, p0, Lr2/y;->i:Lp2/l;

    .line 8
    iput-object p7, p0, Lr2/y;->g:Ljava/lang/Class;

    .line 9
    iput-object p8, p0, Lr2/y;->h:Lp2/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr2/y;->b:Ls2/b;

    invoke-interface {v0}, Ls2/b;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lr2/y;->e:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lr2/y;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 3
    iget-object v1, p0, Lr2/y;->d:Lp2/f;

    invoke-interface {v1, p1}, Lp2/f;->a(Ljava/security/MessageDigest;)V

    .line 4
    iget-object v1, p0, Lr2/y;->c:Lp2/f;

    invoke-interface {v1, p1}, Lp2/f;->a(Ljava/security/MessageDigest;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    iget-object v1, p0, Lr2/y;->i:Lp2/l;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lp2/f;->a(Ljava/security/MessageDigest;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lr2/y;->h:Lp2/h;

    invoke-virtual {v1, p1}, Lp2/h;->a(Ljava/security/MessageDigest;)V

    .line 9
    sget-object v1, Lr2/y;->j:Ll3/i;

    iget-object v2, p0, Lr2/y;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ll3/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lr2/y;->g:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lp2/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 11
    iget-object v3, p0, Lr2/y;->g:Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ll3/i;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    iget-object p1, p0, Lr2/y;->b:Ls2/b;

    invoke-interface {p1, v0}, Ls2/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lr2/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr2/y;

    .line 3
    iget v0, p0, Lr2/y;->f:I

    iget v2, p1, Lr2/y;->f:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lr2/y;->e:I

    iget v2, p1, Lr2/y;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lr2/y;->i:Lp2/l;

    iget-object v2, p1, Lr2/y;->i:Lp2/l;

    .line 4
    invoke-static {v0, v2}, Ll3/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/y;->g:Ljava/lang/Class;

    iget-object v2, p1, Lr2/y;->g:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/y;->c:Lp2/f;

    iget-object v2, p1, Lr2/y;->c:Lp2/f;

    .line 6
    invoke-interface {v0, v2}, Lp2/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/y;->d:Lp2/f;

    iget-object v2, p1, Lr2/y;->d:Lp2/f;

    .line 7
    invoke-interface {v0, v2}, Lp2/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/y;->h:Lp2/h;

    iget-object p1, p1, Lr2/y;->h:Lp2/h;

    .line 8
    invoke-virtual {v0, p1}, Lp2/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/y;->c:Lp2/f;

    invoke-interface {v0}, Lp2/f;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lr2/y;->d:Lp2/f;

    invoke-interface {v1}, Lp2/f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lr2/y;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lr2/y;->f:I

    add-int/2addr v1, v0

    .line 5
    iget-object v0, p0, Lr2/y;->i:Lp2/l;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lr2/y;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lr2/y;->h:Lp2/h;

    invoke-virtual {v1}, Lp2/h;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ResourceCacheKey{sourceKey="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr2/y;->c:Lp2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr2/y;->d:Lp2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr2/y;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr2/y;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr2/y;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr2/y;->i:Lp2/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr2/y;->h:Lp2/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
