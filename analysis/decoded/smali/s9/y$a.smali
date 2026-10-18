.class public final Ls9/y$a;
.super Ljava/lang/Object;
.source "ShowDialogUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls9/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p4, "crumbLeftButton"

    .line 1
    invoke-static {p3, p4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "crumbRightButton"

    invoke-static {v1, p4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls9/y$a;->a:Ljava/lang/String;

    iput-object p2, p0, Ls9/y$a;->b:Ljava/lang/String;

    iput-object p3, p0, Ls9/y$a;->c:Ljava/lang/String;

    iput-object v1, p0, Ls9/y$a;->d:Ljava/lang/String;

    return-void
.end method
