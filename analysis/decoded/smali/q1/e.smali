.class public final Lq1/e;
.super Lq1/c;
.source "NetworkMeteredController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/c<",
        "Lp1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq1/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw1/a;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lr1/g;->a(Landroid/content/Context;Lw1/a;)Lr1/g;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lr1/g;->c:Lr1/e;

    .line 3
    invoke-direct {p0, p1}, Lq1/c;-><init>(Lr1/d;)V

    return-void
.end method


# virtual methods
.method public final b(Lt1/o;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lt1/o;->j:Lk1/c;

    .line 2
    iget-object p1, p1, Lk1/c;->a:Lk1/m;

    .line 3
    sget-object v0, Lk1/m;->l:Lk1/m;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lp1/b;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    .line 3
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v3, Lq1/e;->e:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    invoke-virtual {v0, v3, v4, v2}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-boolean p1, p1, Lp1/b;->a:Z

    xor-int/2addr p1, v1

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p1, Lp1/b;->a:Z

    if-eqz v0, :cond_2

    .line 6
    iget-boolean p1, p1, Lp1/b;->c:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    return p1
.end method
