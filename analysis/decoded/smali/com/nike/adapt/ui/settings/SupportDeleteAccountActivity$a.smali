.class public final Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;
.super Lrd/o;
.source "SupportDeleteAccountActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;

    invoke-direct {v0}, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;-><init>()V

    sput-object v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls9/m;->a:Ls9/m;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Ls9/m;->c(ZJ)V

    .line 5
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
