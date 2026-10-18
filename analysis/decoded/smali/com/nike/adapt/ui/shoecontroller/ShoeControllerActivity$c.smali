.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;
.super Lrd/o;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/p;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;

    invoke-direct {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;-><init>()V

    sput-object v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;

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
    .locals 1

    .line 1
    check-cast p1, Lv9/p;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    sget-object v0, Lz8/a;->m:Lz8/a;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightPack(Lz8/a;)V

    .line 4
    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightEffect(Lv7/c;)V

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
