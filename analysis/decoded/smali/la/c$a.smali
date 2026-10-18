.class public final Lla/c$a;
.super Ljava/lang/Object;
.source "AdaptKitSessionInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmc/b0;I)Lla/c;
    .locals 10

    const-string v0, "sessionInfo"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lmc/b0;->a:Lmc/a0;

    const-string v1, "sessionId"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lla/b;

    .line 4
    iget v0, v0, Lmc/a0;->a:I

    .line 5
    invoke-direct {v3, v0}, Lla/b;-><init>(I)V

    .line 6
    iget-wide v4, p1, Lmc/b0;->b:J

    .line 7
    iget v6, p1, Lmc/b0;->c:I

    .line 8
    iget v7, p1, Lmc/b0;->d:I

    .line 9
    iget p1, p1, Lmc/b0;->e:I

    const-string v0, "sessionState"

    .line 10
    invoke-static {p1, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 11
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 12
    sget-object p1, Lla/c$c;->j:Lla/c$c;

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 13
    :cond_1
    sget-object p1, Lla/c$c;->i:Lla/c$c;

    goto :goto_0

    .line 14
    :cond_2
    sget-object p1, Lla/c$c;->k:Lla/c$c;

    goto :goto_0

    .line 15
    :cond_3
    sget-object p1, Lla/c$c;->l:Lla/c$c;

    :goto_0
    move-object v9, p1

    .line 16
    new-instance p1, Lla/c;

    move-object v2, p1

    move v8, p2

    invoke-direct/range {v2 .. v9}, Lla/c;-><init>(Lla/b;JIIILla/c$c;)V

    return-object p1
.end method
