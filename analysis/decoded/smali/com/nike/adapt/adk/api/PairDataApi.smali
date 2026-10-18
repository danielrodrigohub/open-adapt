.class public interface abstract Lcom/nike/adapt/adk/api/PairDataApi;
.super Ljava/lang/Object;
.source "PairDataApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/api/PairDataApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nike/adapt/adk/api/PairDataApi$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/api/PairDataApi$Companion;->$$INSTANCE:Lcom/nike/adapt/adk/api/PairDataApi$Companion;

    sput-object v0, Lcom/nike/adapt/adk/api/PairDataApi;->Companion:Lcom/nike/adapt/adk/api/PairDataApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract retrievePairFromNetwork(Ljd/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
