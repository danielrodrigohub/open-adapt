.class public final Lcom/nike/adapt/PeripheralConnectionManager$b;
.super Lrd/o;
.source "PeripheralConnectionManager.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/PeripheralConnectionManager;->stopAnimation()V
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
.field public static final h:Lcom/nike/adapt/PeripheralConnectionManager$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/PeripheralConnectionManager$b;

    invoke-direct {v0}, Lcom/nike/adapt/PeripheralConnectionManager$b;-><init>()V

    sput-object v0, Lcom/nike/adapt/PeripheralConnectionManager$b;->h:Lcom/nike/adapt/PeripheralConnectionManager$b;

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

    const-string v0, "$this$$receiver"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
