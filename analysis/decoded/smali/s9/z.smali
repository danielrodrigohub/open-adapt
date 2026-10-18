.class public final enum Ls9/z;
.super Ljava/lang/Enum;
.source "FirmwareUpdateUtil.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls9/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Ls9/z;

.field public static final enum i:Ls9/z;

.field public static final enum j:Ls9/z;

.field public static final enum k:Ls9/z;

.field public static final enum l:Ls9/z;

.field public static final enum m:Ls9/z;

.field public static final enum n:Ls9/z;

.field public static final synthetic o:[Ls9/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ls9/z;

    const-string v1, "UP_TO_DATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls9/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls9/z;->h:Ls9/z;

    .line 2
    new-instance v1, Ls9/z;

    const-string v3, "UPDATE_AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls9/z;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls9/z;->i:Ls9/z;

    .line 3
    new-instance v3, Ls9/z;

    const-string v5, "UPDATING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls9/z;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls9/z;->j:Ls9/z;

    .line 4
    new-instance v5, Ls9/z;

    const-string v7, "UPDATE_COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls9/z;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls9/z;->k:Ls9/z;

    .line 5
    new-instance v7, Ls9/z;

    const-string v9, "RESTARTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls9/z;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ls9/z;->l:Ls9/z;

    .line 6
    new-instance v9, Ls9/z;

    const-string v11, "FIRMWARE_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls9/z;-><init>(Ljava/lang/String;I)V

    .line 7
    new-instance v11, Ls9/z;

    const-string v13, "CHECK_FOR_UPDATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ls9/z;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ls9/z;->m:Ls9/z;

    .line 8
    new-instance v13, Ls9/z;

    const-string v15, "NO_NETWORK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ls9/z;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ls9/z;->n:Ls9/z;

    const/16 v15, 0x8

    new-array v15, v15, [Ls9/z;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Ls9/z;->o:[Ls9/z;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls9/z;
    .locals 1

    const-class v0, Ls9/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls9/z;

    return-object p0
.end method

.method public static values()[Ls9/z;
    .locals 1

    sget-object v0, Ls9/z;->o:[Ls9/z;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls9/z;

    return-object v0
.end method
