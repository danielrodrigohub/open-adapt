.class final Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester$Companion;->create$default(Lcom/nike/adapt/adk/AdaptRequester$Companion;Landroidx/lifecycle/i;Li8/d;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;ILjava/lang/Object;)Lcom/nike/adapt/adk/AdaptRequester;
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


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;

    invoke-direct {v0}, Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;->invoke()V

    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    return-void
.end method
