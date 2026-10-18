.class public final enum Lo7/u;
.super Ljava/lang/Enum;
.source "NikeLogger.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo7/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lo7/u;

.field public static final enum i:Lo7/u;

.field public static final enum j:Lo7/u;

.field public static final synthetic k:[Lo7/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lo7/u;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo7/u;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v1, Lo7/u;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo7/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo7/u;->h:Lo7/u;

    .line 3
    new-instance v3, Lo7/u;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lo7/u;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo7/u;->i:Lo7/u;

    .line 4
    new-instance v5, Lo7/u;

    const-string v7, "WARN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lo7/u;-><init>(Ljava/lang/String;I)V

    .line 5
    new-instance v7, Lo7/u;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lo7/u;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lo7/u;->j:Lo7/u;

    .line 6
    new-instance v9, Lo7/u;

    const-string v11, "ASSERT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lo7/u;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x6

    new-array v11, v11, [Lo7/u;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lo7/u;->k:[Lo7/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo7/u;
    .locals 1

    const-class v0, Lo7/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo7/u;

    return-object p0
.end method

.method public static values()[Lo7/u;
    .locals 1

    sget-object v0, Lo7/u;->k:[Lo7/u;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo7/u;

    return-object v0
.end method
