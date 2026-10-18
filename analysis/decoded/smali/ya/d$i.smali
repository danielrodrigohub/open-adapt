.class public final Lya/d$i;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->s(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$i;->h:Lya/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lya/d$i;->h:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->C:Lya/d$k;

    .line 3
    iget-object v2, v0, Lya/d;->b:Lea/b;

    .line 4
    iget-object v3, v2, Lea/b;->j:Ljava/lang/String;

    .line 5
    iget-object v2, v2, Lea/b;->l:Ljava/lang/String;

    .line 6
    new-instance v4, Lic/t;

    .line 7
    iget-object v0, v0, Lya/d;->f:Ljava/lang/String;

    .line 8
    invoke-direct {v4, v0}, Lic/t;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v3, v2, v4}, Lya/d$k;->a(Ljava/lang/String;Ljava/lang/String;Lf8/b;)V

    .line 10
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
