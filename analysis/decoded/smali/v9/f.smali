.class public abstract Lv9/f;
.super Lv9/m;
.source "AdaptKitControllerError.kt"


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:Lv9/a;

.field public final k:Ljava/lang/Throwable;

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lv9/m;-><init>(Lv9/a;)V

    .line 2
    iput-object p1, p0, Lv9/f;->i:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lv9/f;->j:Lv9/a;

    .line 4
    iput-object p3, p0, Lv9/f;->k:Ljava/lang/Throwable;

    const/16 p2, 0x4c

    const/4 p3, 0x1

    .line 5
    invoke-static {p1, p2, p3}, Lyd/s;->j0(Ljava/lang/CharSequence;CZ)Z

    move-result p1

    iput-boolean p1, p0, Lv9/f;->l:Z

    xor-int/2addr p1, p3

    .line 6
    iput-boolean p1, p0, Lv9/f;->m:Z

    return-void
.end method


# virtual methods
.method public a()Lv9/a;
    .locals 1

    iget-object v0, p0, Lv9/f;->j:Lv9/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lv9/f;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv9/f;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lv9/f;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lv9/f;->f()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, " "

    .line 2
    invoke-static {v0, v3, v1, v3, v2}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lv9/f;->k:Ljava/lang/Throwable;

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lv9/f;->d()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lv9/f;->d()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "no message"

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request not processed. Please see ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] message: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for details."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lv9/f;->d()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv9/f;->f()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
