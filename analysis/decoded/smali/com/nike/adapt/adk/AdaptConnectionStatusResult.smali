.class public abstract Lcom/nike/adapt/adk/AdaptConnectionStatusResult;
.super Ljava/lang/Object;
.source "AdaptRequester.kt"

# interfaces
.implements Li8/b;
.implements Landroid/os/Parcelable;


# instance fields
.field private final device:Lea/m;

.field private final eventUUID:Li8/d;

.field private final shoe:Lcom/nike/adapt/adk/Shoe;


# direct methods
.method private constructor <init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->eventUUID:Li8/d;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->device:Lea/m;

    return-void
.end method

.method public synthetic constructor <init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;Lrd/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    return-void
.end method


# virtual methods
.method public final getDevice()Lea/m;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->device:Lea/m;

    return-object v0
.end method

.method public getEventUUID()Li8/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->eventUUID:Li8/d;

    return-object v0
.end method

.method public final getShoe()Lcom/nike/adapt/adk/Shoe;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    return-object v0
.end method
