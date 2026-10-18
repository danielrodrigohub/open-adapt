.class public final Lwa/g;
.super Lrd/o;
.source "AdaptKitRemoteBroadcastReceiver.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/f;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lia/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lia/a<",
            "***>;"
        }
    .end annotation
.end field

.field public final synthetic i:Lwa/d$b;


# direct methods
.method public constructor <init>(Lia/a;Lwa/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lia/a<",
            "***>;",
            "Lwa/d$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lwa/g;->h:Lia/a;

    iput-object p2, p0, Lwa/g;->i:Lwa/d$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lv9/f;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lwa/g;->h:Lia/a;

    .line 4
    instance-of v1, v0, Lia/a$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lwa/d;->h:Lwa/d;

    iget-object v4, p0, Lwa/g;->i:Lwa/d$b;

    .line 6
    instance-of v5, p1, Lv9/u4;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Lv9/u4;

    if-eqz v2, :cond_11

    .line 7
    invoke-virtual {v1}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 8
    iget-boolean p1, p1, Lv9/f;->l:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 10
    iput-boolean v3, p1, Lwa/d$a;->b:Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 12
    iput-boolean v3, p1, Lwa/d$a;->c:Z

    .line 13
    :goto_1
    invoke-static {v1, v4}, Lwa/d;->f(Lwa/d;Lwa/d$b;)V

    goto/16 :goto_c

    .line 14
    :cond_2
    instance-of v1, v0, Lia/a$f;

    if-eqz v1, :cond_5

    .line 15
    sget-object v1, Lwa/d;->h:Lwa/d;

    iget-object v4, p0, Lwa/g;->i:Lwa/d$b;

    .line 16
    instance-of v5, p1, Lv9/x3;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, p1

    :goto_2
    check-cast v2, Lv9/x3;

    if-eqz v2, :cond_11

    .line 17
    invoke-virtual {v1}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 18
    iget-boolean p1, p1, Lv9/f;->l:Z

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 20
    iput-boolean v3, p1, Lwa/d$a;->b:Z

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 22
    iput-boolean v3, p1, Lwa/d$a;->c:Z

    .line 23
    :goto_3
    invoke-static {v1, v4}, Lwa/d;->f(Lwa/d;Lwa/d$b;)V

    goto/16 :goto_c

    .line 24
    :cond_5
    instance-of v1, v0, Lia/a$b;

    if-eqz v1, :cond_8

    .line 25
    sget-object v1, Lwa/d;->h:Lwa/d;

    iget-object v4, p0, Lwa/g;->i:Lwa/d$b;

    .line 26
    instance-of v5, p1, Lv9/r3;

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, p1

    :goto_4
    check-cast v2, Lv9/r3;

    if-eqz v2, :cond_11

    .line 27
    invoke-virtual {v1}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 28
    iget-boolean p1, p1, Lv9/f;->l:Z

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 30
    iput-boolean v3, p1, Lwa/d$a;->b:Z

    goto :goto_5

    .line 31
    :cond_7
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 32
    iput-boolean v3, p1, Lwa/d$a;->c:Z

    .line 33
    :goto_5
    invoke-static {v1, v4}, Lwa/d;->f(Lwa/d;Lwa/d$b;)V

    goto/16 :goto_c

    .line 34
    :cond_8
    instance-of v1, v0, Lia/a$e;

    if-eqz v1, :cond_b

    .line 35
    sget-object v1, Lwa/d;->h:Lwa/d;

    iget-object v4, p0, Lwa/g;->i:Lwa/d$b;

    .line 36
    instance-of v5, p1, Lv9/u3;

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    move-object v2, p1

    :goto_6
    check-cast v2, Lv9/u3;

    if-eqz v2, :cond_11

    .line 37
    invoke-virtual {v1}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 38
    iget-boolean p1, p1, Lv9/f;->l:Z

    if-eqz p1, :cond_a

    .line 39
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 40
    iput-boolean v3, p1, Lwa/d$a;->b:Z

    goto :goto_7

    .line 41
    :cond_a
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 42
    iput-boolean v3, p1, Lwa/d$a;->c:Z

    .line 43
    :goto_7
    invoke-static {v1, v4}, Lwa/d;->f(Lwa/d;Lwa/d$b;)V

    goto :goto_c

    .line 44
    :cond_b
    instance-of v1, v0, Lia/a$c;

    if-eqz v1, :cond_e

    .line 45
    sget-object v1, Lwa/d;->h:Lwa/d;

    iget-object v4, p0, Lwa/g;->i:Lwa/d$b;

    .line 46
    instance-of v5, p1, Lv9/d4;

    if-nez v5, :cond_c

    goto :goto_8

    :cond_c
    move-object v2, p1

    :goto_8
    check-cast v2, Lv9/d4;

    if-eqz v2, :cond_11

    .line 47
    invoke-virtual {v1}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 48
    iget-boolean p1, p1, Lv9/f;->l:Z

    if-eqz p1, :cond_d

    .line 49
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 50
    iput-boolean v3, p1, Lwa/d$a;->b:Z

    goto :goto_9

    .line 51
    :cond_d
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 52
    iput-boolean v3, p1, Lwa/d$a;->c:Z

    .line 53
    :goto_9
    invoke-static {v1, v4}, Lwa/d;->f(Lwa/d;Lwa/d$b;)V

    goto :goto_c

    .line 54
    :cond_e
    instance-of v1, v0, Lia/a$a;

    if-eqz v1, :cond_11

    .line 55
    sget-object v1, Lwa/d;->h:Lwa/d;

    iget-object v4, p0, Lwa/g;->i:Lwa/d$b;

    .line 56
    instance-of v5, p1, Lv9/d4;

    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    move-object v2, p1

    :goto_a
    check-cast v2, Lv9/d4;

    if-eqz v2, :cond_11

    .line 57
    invoke-virtual {v1}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 58
    iget-boolean p1, p1, Lv9/f;->l:Z

    if-eqz p1, :cond_10

    .line 59
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 60
    iput-boolean v3, p1, Lwa/d$a;->b:Z

    goto :goto_b

    .line 61
    :cond_10
    iget-object p1, v4, Lwa/d$b;->c:Lwa/d$a;

    .line 62
    iput-boolean v3, p1, Lwa/d$a;->c:Z

    .line 63
    :goto_b
    invoke-static {v1, v4}, Lwa/d;->f(Lwa/d;Lwa/d$b;)V

    .line 64
    :cond_11
    :goto_c
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
