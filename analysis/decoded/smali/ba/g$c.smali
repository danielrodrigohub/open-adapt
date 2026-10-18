.class public final enum Lba/g$c;
.super Ljava/lang/Enum;
.source "AdaptKitCurrentAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lba/g$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lba/g$c;

.field public static final enum i:Lba/g$c;

.field public static final enum j:Lba/g$c;

.field public static final enum k:Lba/g$c;

.field public static final enum l:Lba/g$c;

.field public static final enum m:Lba/g$c;

.field public static final synthetic n:[Lba/g$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lba/g$c;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lba/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lba/g$c;->h:Lba/g$c;

    .line 2
    new-instance v1, Lba/g$c;

    const-string v3, "TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lba/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lba/g$c;->i:Lba/g$c;

    .line 3
    new-instance v3, Lba/g$c;

    const-string v5, "CANCELED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lba/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lba/g$c;->j:Lba/g$c;

    .line 4
    new-instance v5, Lba/g$c;

    const-string v7, "BATTERY_OVERTEMP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lba/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lba/g$c;->k:Lba/g$c;

    .line 5
    new-instance v7, Lba/g$c;

    const-string v9, "CRITICAL_BATTERY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lba/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lba/g$c;->l:Lba/g$c;

    .line 6
    new-instance v9, Lba/g$c;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lba/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lba/g$c;->m:Lba/g$c;

    const/4 v11, 0x6

    new-array v11, v11, [Lba/g$c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lba/g$c;->n:[Lba/g$c;

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

.method public static valueOf(Ljava/lang/String;)Lba/g$c;
    .locals 1

    const-class v0, Lba/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lba/g$c;

    return-object p0
.end method

.method public static values()[Lba/g$c;
    .locals 1

    sget-object v0, Lba/g$c;->n:[Lba/g$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lba/g$c;

    return-object v0
.end method
