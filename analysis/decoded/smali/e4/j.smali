.class public final Le4/j;
.super Ljava/lang/Object;
.source "DefaultMediaCodecAdapterFactory.java"

# interfaces
.implements Le4/l$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le4/l$a;)Le4/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p1, Le4/l$a;->c:Ln3/s0;

    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {v0}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Creating an asynchronous MediaCodec adapter for track type "

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lm5/g0;->E(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    .line 5
    invoke-static {v2, v1}, Lm5/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Le4/d$a;

    invoke-direct {v1, v0}, Le4/d$a;-><init>(I)V

    .line 7
    invoke-virtual {v1, p1}, Le4/d$a;->b(Le4/l$a;)Le4/d;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Le4/t$a;

    invoke-direct {v0}, Le4/t$a;-><init>()V

    invoke-virtual {v0, p1}, Le4/t$a;->a(Le4/l$a;)Le4/l;

    move-result-object p1

    return-object p1
.end method
