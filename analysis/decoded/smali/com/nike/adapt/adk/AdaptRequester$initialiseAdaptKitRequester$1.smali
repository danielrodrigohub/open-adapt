.class final Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester;->initialiseAdaptKitRequester(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lea/m;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;

    invoke-direct {v0}, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lea/m;)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "it"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lea/m;->i:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lea/m;->u:Ljava/lang/String;

    .line 3
    iget-boolean v3, v0, Lea/m;->j:Z

    .line 4
    iget-object v4, v0, Lea/m;->k:Lea/b;

    .line 5
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    .line 6
    iget-object v5, v0, Lea/m;->l:Lea/b;

    .line 7
    iget-object v5, v5, Lea/b;->j:Ljava/lang/String;

    .line 8
    invoke-static/range {p1 .. p1}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object v6

    .line 9
    iget-object v7, v0, Lea/m;->n:Ljava/lang/String;

    .line 10
    iget-wide v8, v0, Lea/m;->p:J

    .line 11
    iget-wide v10, v0, Lea/m;->q:J

    .line 12
    iget-wide v12, v0, Lea/m;->s:J

    const-string v0, "pairName = "

    const-string v14, ", pairId = "

    const-string v15, ", isDefault = "

    .line 13
    invoke-static {v0, v1, v14, v2, v15}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", leftDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rightDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshots = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorWay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localUpdatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lea/m;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;->invoke(Lea/m;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
