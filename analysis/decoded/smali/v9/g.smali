.class public abstract Lv9/g;
.super Lda/g;
.source "AdaptKitControllerResult.kt"

# interfaces
.implements Leb/d;


# instance fields
.field public final k:Lv9/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lda/g;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 2
    iput-object p2, p0, Lv9/g;->k:Lv9/a;

    return-void
.end method


# virtual methods
.method public a()Lv9/a;
    .locals 1

    iget-object v0, p0, Lv9/g;->k:Lv9/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lv9/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lda/g;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lv9/g;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lv9/g;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    const-string v4, "] "

    .line 4
    invoke-static {v3, v2, v4}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_2
    invoke-virtual {p0}, Lv9/g;->a()Lv9/a;

    move-result-object v3

    invoke-virtual {v3}, Lv9/a;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, " for "

    const-string v5, " "

    .line 6
    invoke-static {v0, v4, v1, v5, v2}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from "

    .line 7
    invoke-static {v0, v1, v3}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgd/q;->h:Lgd/q;

    return-object v0
.end method
