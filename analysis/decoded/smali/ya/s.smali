.class public final Lya/s;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroid/content/Intent;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/f;


# direct methods
.method public constructor <init>(Lv9/f;)V
    .locals 0

    iput-object p1, p0, Lya/s;->h:Lv9/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/content/Intent;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/s;->h:Lv9/f;

    const-string v1, "error"

    .line 4
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v1, v0, Lv9/m4;

    if-eqz v1, :cond_0

    sget-object v1, Lia/c$e;->a:Lia/c$e;

    invoke-virtual {v1, p1, v0}, Lia/c;->g(Landroid/content/Intent;Lv9/f;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Lv9/z1;

    if-eqz v1, :cond_1

    sget-object v1, Lia/c$b;->a:Lia/c$b;

    invoke-virtual {v1, p1, v0}, Lia/c;->g(Landroid/content/Intent;Lv9/f;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Lv9/u4;

    if-eqz v1, :cond_2

    sget-object v1, Lia/c$f;->a:Lia/c$f;

    invoke-virtual {v1, p1, v0}, Lia/c;->g(Landroid/content/Intent;Lv9/f;)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, v0, Lv9/d4;

    if-eqz v1, :cond_3

    sget-object v1, Lia/c$d;->a:Lia/c$d;

    invoke-virtual {v1, p1, v0}, Lia/c;->g(Landroid/content/Intent;Lv9/f;)V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v1, v0, Lv9/x3;

    if-eqz v1, :cond_4

    sget-object v1, Lia/c$h;->a:Lia/c$h;

    invoke-virtual {v1, p1, v0}, Lia/c;->g(Landroid/content/Intent;Lv9/f;)V

    goto :goto_0

    .line 10
    :cond_4
    instance-of v1, v0, Lv9/u3;

    if-eqz v1, :cond_5

    sget-object v1, Lia/c$g;->a:Lia/c$g;

    invoke-virtual {v1, p1, v0}, Lia/c;->g(Landroid/content/Intent;Lv9/f;)V

    goto :goto_0

    .line 11
    :cond_5
    instance-of v1, v0, Lv9/w1;

    if-eqz v1, :cond_6

    sget-object v1, Lia/c$a;->a:Lia/c$a;

    invoke-virtual {v1, p1, v0}, Lia/c;->g(Landroid/content/Intent;Lv9/f;)V

    .line 12
    :cond_6
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
