.class public final enum Lk1/m;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk1/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lk1/m;

.field public static final enum i:Lk1/m;

.field public static final enum j:Lk1/m;

.field public static final enum k:Lk1/m;

.field public static final enum l:Lk1/m;

.field public static final enum m:Lk1/m;

.field public static final synthetic n:[Lk1/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lk1/m;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk1/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk1/m;->h:Lk1/m;

    .line 2
    new-instance v1, Lk1/m;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lk1/m;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk1/m;->i:Lk1/m;

    .line 3
    new-instance v3, Lk1/m;

    const-string v5, "UNMETERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lk1/m;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lk1/m;->j:Lk1/m;

    .line 4
    new-instance v5, Lk1/m;

    const-string v7, "NOT_ROAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lk1/m;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lk1/m;->k:Lk1/m;

    .line 5
    new-instance v7, Lk1/m;

    const-string v9, "METERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lk1/m;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lk1/m;->l:Lk1/m;

    .line 6
    new-instance v9, Lk1/m;

    const-string v11, "TEMPORARILY_UNMETERED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lk1/m;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lk1/m;->m:Lk1/m;

    const/4 v11, 0x6

    new-array v11, v11, [Lk1/m;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lk1/m;->n:[Lk1/m;

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

.method public static valueOf(Ljava/lang/String;)Lk1/m;
    .locals 1

    const-class v0, Lk1/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk1/m;

    return-object p0
.end method

.method public static values()[Lk1/m;
    .locals 1

    sget-object v0, Lk1/m;->n:[Lk1/m;

    invoke-virtual {v0}, [Lk1/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk1/m;

    return-object v0
.end method
