.class final Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;
.super Lld/c;
.source "PairDataRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.adk.api.PairDataRepository"
    f = "PairDataRepository.kt"
    l = {
        0xa
    }
    m = "syncPairData"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/nike/adapt/adk/api/PairDataRepository;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/api/PairDataRepository;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/adk/api/PairDataRepository;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->this$0:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->label:I

    iget-object p1, p0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->this$0:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-virtual {p1, p0}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
