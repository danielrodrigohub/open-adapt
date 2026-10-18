.class public final enum Lpa/g;
.super Ljava/lang/Enum;
.source "AdaptKitDeviceServiceApi.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpa/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lpa/g;

.field public static final enum i:Lpa/g;

.field public static final enum j:Lpa/g;

.field public static final synthetic k:[Lpa/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lpa/g;

    const-string v1, "NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpa/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpa/g;->h:Lpa/g;

    new-instance v1, Lpa/g;

    const-string v3, "EXISTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lpa/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpa/g;->i:Lpa/g;

    new-instance v3, Lpa/g;

    const-string v5, "DELETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lpa/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lpa/g;->j:Lpa/g;

    const/4 v5, 0x3

    new-array v5, v5, [Lpa/g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lpa/g;->k:[Lpa/g;

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

.method public static valueOf(Ljava/lang/String;)Lpa/g;
    .locals 1

    const-class v0, Lpa/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpa/g;

    return-object p0
.end method

.method public static values()[Lpa/g;
    .locals 1

    sget-object v0, Lpa/g;->k:[Lpa/g;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpa/g;

    return-object v0
.end method
