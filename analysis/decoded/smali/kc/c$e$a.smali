.class public final Lkc/c$e$a;
.super Lkc/c$e;
.source "FileTransferError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/c$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 2

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slot"

    invoke-static {p2, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CORE_RF_FILE_TRANSFER_ERROR_CRC_MISMATCH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Lcom/nike/adapt/adk/model/a;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0, p5, p1}, Lkc/c$e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 5
    iput p2, p0, Lkc/c$e$a;->i:I

    .line 6
    iput p3, p0, Lkc/c$e$a;->j:I

    .line 7
    iput p4, p0, Lkc/c$e$a;->k:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lkc/c$e$a;->i:I

    return v0
.end method
