.class public final Lya/d$g0;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->O(Lv9/a;Lea/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Boolean;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lv9/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 0

    iput-object p1, p0, Lya/d$g0;->h:Lya/d;

    iput-object p2, p0, Lya/d$g0;->i:Lv9/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lya/d$g0;->h:Lya/d;

    .line 3
    new-instance v1, Lv9/w4;

    .line 4
    iget-object v2, v0, Lya/d;->f:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lya/d$g0;->i:Lv9/a;

    invoke-direct {v1, v2, v3}, Lv9/w4;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 6
    new-instance v2, Lv9/u4;

    .line 7
    iget-object v3, p0, Lya/d$g0;->h:Lya/d;

    .line 8
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lya/d$g0;->i:Lv9/a;

    .line 10
    new-instance v5, Ly9/a;

    .line 11
    iget-object v6, p0, Lya/d$g0;->i:Lv9/a;

    const-string v7, "laceToPercent"

    .line 12
    invoke-direct {v5, v6, v7}, Ly9/a;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 13
    invoke-direct {v2, v3, v4, v5}, Lv9/u4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {v0, p1, v1, v2}, Lya/d;->e0(Lya/d;ZLv9/g;Lv9/f;)V

    .line 15
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
