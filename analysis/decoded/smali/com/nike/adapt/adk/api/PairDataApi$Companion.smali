.class public final Lcom/nike/adapt/adk/api/PairDataApi$Companion;
.super Ljava/lang/Object;
.source "PairDataApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/api/PairDataApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/nike/adapt/adk/api/PairDataApi$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/api/PairDataApi$Companion;

    invoke-direct {v0}, Lcom/nike/adapt/adk/api/PairDataApi$Companion;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/api/PairDataApi$Companion;->$$INSTANCE:Lcom/nike/adapt/adk/api/PairDataApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/nike/adapt/adk/api/PairDataApi;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/api/PairDataApiImpl;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataApiImpl;

    return-object v0
.end method
