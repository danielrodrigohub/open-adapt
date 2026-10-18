.class public final enum Lda/a;
.super Ljava/lang/Enum;
.source "AdaptKitConnectedDeviceState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lda/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Lda/a;

.field public static final enum k:Lda/a;

.field public static final enum l:Lda/a;

.field public static final enum m:Lda/a;

.field public static final enum n:Lda/a;

.field public static final synthetic o:[Lda/a;


# instance fields
.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lda/a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "none"

    invoke-direct {v0, v1, v2, v3, v4}, Lda/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lda/a;->j:Lda/a;

    .line 2
    new-instance v1, Lda/a;

    const-string v4, "IDLE"

    const/4 v5, 0x2

    const-string v6, "idle"

    invoke-direct {v1, v4, v3, v5, v6}, Lda/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lda/a;->k:Lda/a;

    .line 3
    new-instance v4, Lda/a;

    const-string v6, "IN_SESSION"

    const-string v7, "in_session"

    invoke-direct {v4, v6, v5, v5, v7}, Lda/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lda/a;->l:Lda/a;

    .line 4
    new-instance v6, Lda/a;

    const-string v7, "FIRMWARE_UPLOAD_IN_PROGRESS"

    const/4 v8, 0x3

    const-string v9, "firmware_upload"

    invoke-direct {v6, v7, v8, v5, v9}, Lda/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lda/a;->m:Lda/a;

    .line 5
    new-instance v7, Lda/a;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    const-string v11, "unknown"

    invoke-direct {v7, v9, v10, v5, v11}, Lda/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lda/a;->n:Lda/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lda/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lda/a;->o:[Lda/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lda/a;->h:I

    iput-object p4, p0, Lda/a;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lda/a;
    .locals 1

    const-class v0, Lda/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lda/a;

    return-object p0
.end method

.method public static values()[Lda/a;
    .locals 1

    sget-object v0, Lda/a;->o:[Lda/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lda/a;

    return-object v0
.end method
