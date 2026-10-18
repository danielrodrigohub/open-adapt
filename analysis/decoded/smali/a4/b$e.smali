.class public final La4/b$e;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements La4/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lm5/w;


# direct methods
.method public constructor <init>(La4/a$b;Ln3/s0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, La4/a$b;->b:Lm5/w;

    iput-object p1, p0, La4/b$e;->c:Lm5/w;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lm5/w;->D(I)V

    .line 4
    invoke-virtual {p1}, Lm5/w;->w()I

    move-result v0

    .line 5
    iget-object v1, p2, Ln3/s0;->s:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget v1, p2, Ln3/s0;->H:I

    iget p2, p2, Ln3/s0;->F:I

    invoke-static {v1, p2}, Lm5/g0;->z(II)I

    move-result p2

    if-eqz v0, :cond_0

    .line 7
    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    invoke-static {v1, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 9
    :cond_2
    iput v0, p0, La4/b$e;->a:I

    .line 10
    invoke-virtual {p1}, Lm5/w;->w()I

    move-result p1

    iput p1, p0, La4/b$e;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La4/b$e;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, La4/b$e;->b:I

    return v0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, La4/b$e;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La4/b$e;->c:Lm5/w;

    invoke-virtual {v0}, Lm5/w;->w()I

    move-result v0

    :cond_0
    return v0
.end method
