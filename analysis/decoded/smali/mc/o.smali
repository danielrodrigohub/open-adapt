.class public final enum Lmc/o;
.super Ljava/lang/Enum;
.source "GestureConfigurationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmc/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lmc/o;

.field public static final enum i:Lmc/o;

.field public static final enum j:Lmc/o;

.field public static final enum k:Lmc/o;

.field public static final synthetic l:[Lmc/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lmc/o;

    const-string v1, "CRITICAL_BATTERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmc/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmc/o;->h:Lmc/o;

    .line 2
    new-instance v1, Lmc/o;

    const-string v3, "ACTIVE_SESSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmc/o;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmc/o;->i:Lmc/o;

    .line 3
    new-instance v3, Lmc/o;

    const-string v5, "CONFIG_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmc/o;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmc/o;->j:Lmc/o;

    .line 4
    new-instance v5, Lmc/o;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmc/o;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmc/o;->k:Lmc/o;

    const/4 v7, 0x4

    new-array v7, v7, [Lmc/o;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lmc/o;->l:[Lmc/o;

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

.method public static valueOf(Ljava/lang/String;)Lmc/o;
    .locals 1

    const-class v0, Lmc/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/o;

    return-object p0
.end method

.method public static values()[Lmc/o;
    .locals 1

    sget-object v0, Lmc/o;->l:[Lmc/o;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/o;

    return-object v0
.end method
