.class public final enum Lba/g$d;
.super Ljava/lang/Enum;
.source "AdaptKitCurrentAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lba/g$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lba/g$d;

.field public static final enum i:Lba/g$d;

.field public static final enum j:Lba/g$d;

.field public static final enum k:Lba/g$d;

.field public static final enum l:Lba/g$d;

.field public static final synthetic m:[Lba/g$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lba/g$d;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lba/g$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lba/g$d;->h:Lba/g$d;

    .line 2
    new-instance v1, Lba/g$d;

    const-string v3, "STOPPED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lba/g$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lba/g$d;->i:Lba/g$d;

    .line 3
    new-instance v3, Lba/g$d;

    const-string v5, "QUEUED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lba/g$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lba/g$d;->j:Lba/g$d;

    .line 4
    new-instance v5, Lba/g$d;

    const-string v7, "INTERRUPTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lba/g$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lba/g$d;->k:Lba/g$d;

    .line 5
    new-instance v7, Lba/g$d;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lba/g$d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lba/g$d;->l:Lba/g$d;

    const/4 v9, 0x5

    new-array v9, v9, [Lba/g$d;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lba/g$d;->m:[Lba/g$d;

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

.method public static valueOf(Ljava/lang/String;)Lba/g$d;
    .locals 1

    const-class v0, Lba/g$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lba/g$d;

    return-object p0
.end method

.method public static values()[Lba/g$d;
    .locals 1

    sget-object v0, Lba/g$d;->m:[Lba/g$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lba/g$d;

    return-object v0
.end method
