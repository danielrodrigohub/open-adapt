.class public final enum Lrc/b;
.super Ljava/lang/Enum;
.source "FirmwareUtil.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrc/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lrc/b;

.field public static final enum j:Lrc/b;

.field public static final enum k:Lrc/b;

.field public static final enum l:Lrc/b;

.field public static final enum m:Lrc/b;

.field public static final enum n:Lrc/b;

.field public static final enum o:Lrc/b;

.field public static final synthetic p:[Lrc/b;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lrc/b;

    const-string v1, "MCU_IMAGE_UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lrc/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lrc/b;->i:Lrc/b;

    .line 2
    new-instance v1, Lrc/b;

    const-string v3, "BLE_IMAGE_UPDATE"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lrc/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrc/b;->j:Lrc/b;

    .line 3
    new-instance v3, Lrc/b;

    const-string v6, "CS_IMAGE_UPDATE"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v5, v7}, Lrc/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lrc/b;->k:Lrc/b;

    .line 4
    new-instance v6, Lrc/b;

    const-string v8, "MCU_IMAGE_GOLD"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v4}, Lrc/b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lrc/b;->l:Lrc/b;

    .line 5
    new-instance v8, Lrc/b;

    const-string v10, "BLE_IMAGE_GOLD"

    invoke-direct {v8, v10, v7, v9}, Lrc/b;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lrc/b;->m:Lrc/b;

    .line 6
    new-instance v10, Lrc/b;

    const-string v11, "CS_IMAGE_GOLD"

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12, v12}, Lrc/b;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lrc/b;->n:Lrc/b;

    .line 7
    new-instance v11, Lrc/b;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Lrc/b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lrc/b;->o:Lrc/b;

    const/4 v13, 0x7

    new-array v13, v13, [Lrc/b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v5

    aput-object v6, v13, v9

    aput-object v8, v13, v7

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lrc/b;->p:[Lrc/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lrc/b;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrc/b;
    .locals 1

    const-class v0, Lrc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrc/b;

    return-object p0
.end method

.method public static values()[Lrc/b;
    .locals 1

    sget-object v0, Lrc/b;->p:[Lrc/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrc/b;

    return-object v0
.end method
