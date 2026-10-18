.class final Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;
.super Lrd/o;
.source "InMemoryCache.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/InMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lcom/nike/adapt/adk/DeviceCache;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;

    invoke-direct {v0}, Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/nike/adapt/adk/DeviceCache;
    .locals 14

    .line 1
    new-instance v13, Lcom/nike/adapt/adk/DeviceCache;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3fe

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/nike/adapt/adk/DeviceCache;-><init>(ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILrd/h;)V

    return-object v13
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;->invoke()Lcom/nike/adapt/adk/DeviceCache;

    move-result-object v0

    return-object v0
.end method
