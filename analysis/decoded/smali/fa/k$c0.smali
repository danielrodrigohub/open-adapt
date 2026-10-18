.class public final enum Lfa/k$c0;
.super Ljava/lang/Enum;
.source "FirmwareUpdateState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfa/k$c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lfa/k$c0;

.field public static final enum j:Lfa/k$c0;

.field public static final enum k:Lfa/k$c0;

.field public static final enum l:Lfa/k$c0;

.field public static final enum m:Lfa/k$c0;

.field public static final enum n:Lfa/k$c0;

.field public static final enum o:Lfa/k$c0;

.field public static final enum p:Lfa/k$c0;

.field public static final enum q:Lfa/k$c0;

.field public static final enum r:Lfa/k$c0;

.field public static final enum s:Lfa/k$c0;

.field public static final enum t:Lfa/k$c0;

.field public static final synthetic u:[Lfa/k$c0;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lfa/k$c0;

    const-string v1, "CONNECTION_LOST"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfa/k$c0;->i:Lfa/k$c0;

    .line 2
    new-instance v1, Lfa/k$c0;

    const-string v3, "BATTERY_TOO_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfa/k$c0;->j:Lfa/k$c0;

    .line 3
    new-instance v3, Lfa/k$c0;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lfa/k$c0;->k:Lfa/k$c0;

    .line 4
    new-instance v5, Lfa/k$c0;

    const-string v7, "NOT_STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lfa/k$c0;->l:Lfa/k$c0;

    .line 5
    new-instance v7, Lfa/k$c0;

    const-string v9, "FETCHING_DATA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lfa/k$c0;->m:Lfa/k$c0;

    .line 6
    new-instance v9, Lfa/k$c0;

    const-string v11, "IN_PROGRESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lfa/k$c0;->n:Lfa/k$c0;

    .line 7
    new-instance v11, Lfa/k$c0;

    const-string v13, "UPDATING_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lfa/k$c0;->o:Lfa/k$c0;

    .line 8
    new-instance v13, Lfa/k$c0;

    const-string v15, "STAGED_FOR_FLASH"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lfa/k$c0;->p:Lfa/k$c0;

    .line 9
    new-instance v15, Lfa/k$c0;

    const-string v14, "RECONNECTING"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lfa/k$c0;->q:Lfa/k$c0;

    .line 10
    new-instance v14, Lfa/k$c0;

    const-string v12, "COMPLETED_FAILURE"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lfa/k$c0;->r:Lfa/k$c0;

    .line 11
    new-instance v12, Lfa/k$c0;

    const-string v10, "COMPLETED_SUCCESS"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lfa/k$c0;->s:Lfa/k$c0;

    .line 12
    new-instance v10, Lfa/k$c0;

    const-string v8, "NO_UPDATE_AVAILABLE"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lfa/k$c0;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lfa/k$c0;->t:Lfa/k$c0;

    const/16 v8, 0xc

    new-array v8, v8, [Lfa/k$c0;

    aput-object v0, v8, v2

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    aput-object v12, v8, v6

    aput-object v10, v8, v4

    sput-object v8, Lfa/k$c0;->u:[Lfa/k$c0;

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

    iput p3, p0, Lfa/k$c0;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfa/k$c0;
    .locals 1

    const-class v0, Lfa/k$c0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfa/k$c0;

    return-object p0
.end method

.method public static values()[Lfa/k$c0;
    .locals 1

    sget-object v0, Lfa/k$c0;->u:[Lfa/k$c0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfa/k$c0;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lfa/k$c0;

    .line 1
    sget-object v1, Lfa/k$c0;->i:Lfa/k$c0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lfa/k$c0;->j:Lfa/k$c0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lfa/k$c0;->k:Lfa/k$c0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Lfa/k$c0;->r:Lfa/k$c0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    sget-object v1, Lfa/k$c0;->s:Lfa/k$c0;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-static {p0, v0}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
