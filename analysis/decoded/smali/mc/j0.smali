.class public final enum Lmc/j0;
.super Ljava/lang/Enum;
.source "WriteNotificationStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmc/j0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lmc/j0;

.field public static final enum i:Lmc/j0;

.field public static final enum j:Lmc/j0;

.field public static final enum k:Lmc/j0;

.field public static final enum l:Lmc/j0;

.field public static final enum m:Lmc/j0;

.field public static final enum n:Lmc/j0;

.field public static final synthetic o:[Lmc/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lmc/j0;

    const-string v1, "NOT_BONDED_CANNOT_WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmc/j0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmc/j0;->h:Lmc/j0;

    .line 2
    new-instance v1, Lmc/j0;

    const-string v3, "CANCELED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmc/j0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmc/j0;->i:Lmc/j0;

    .line 3
    new-instance v3, Lmc/j0;

    const-string v5, "BONDED_AND_READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmc/j0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmc/j0;->j:Lmc/j0;

    .line 4
    new-instance v5, Lmc/j0;

    const-string v7, "GATT_GONE_COULD_NOT_INVOKE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmc/j0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmc/j0;->k:Lmc/j0;

    .line 5
    new-instance v7, Lmc/j0;

    const-string v9, "RIPLEY_SERVICE_NOT_FOUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmc/j0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmc/j0;->l:Lmc/j0;

    .line 6
    new-instance v9, Lmc/j0;

    const-string v11, "TIMED_OUT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmc/j0;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmc/j0;->m:Lmc/j0;

    .line 7
    new-instance v11, Lmc/j0;

    const-string v13, "USER_DID_NO_ACTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lmc/j0;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lmc/j0;->n:Lmc/j0;

    const/4 v13, 0x7

    new-array v13, v13, [Lmc/j0;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lmc/j0;->o:[Lmc/j0;

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

.method public static valueOf(Ljava/lang/String;)Lmc/j0;
    .locals 1

    const-class v0, Lmc/j0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/j0;

    return-object p0
.end method

.method public static values()[Lmc/j0;
    .locals 1

    sget-object v0, Lmc/j0;->o:[Lmc/j0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/j0;

    return-object v0
.end method
