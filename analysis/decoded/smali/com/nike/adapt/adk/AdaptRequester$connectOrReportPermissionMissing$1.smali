.class final Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester;->connectOrReportPermissionMissing$default(Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/h;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;

    invoke-direct {v0}, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/h;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;->invoke(Lv9/h;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/h;)V
    .locals 1

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
