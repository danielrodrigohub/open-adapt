.class public final enum Ls8/c;
.super Ljava/lang/Enum;
.source "DataOptInActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls8/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Ls8/c;

.field public static final enum i:Ls8/c;

.field public static final synthetic j:[Ls8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ls8/c;

    const-string v1, "Prompted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls8/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls8/c;->h:Ls8/c;

    .line 2
    new-instance v1, Ls8/c;

    const-string v3, "Confirmed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls8/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls8/c;->i:Ls8/c;

    const/4 v3, 0x2

    new-array v3, v3, [Ls8/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ls8/c;->j:[Ls8/c;

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

.method public static valueOf(Ljava/lang/String;)Ls8/c;
    .locals 1

    const-class v0, Ls8/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls8/c;

    return-object p0
.end method

.method public static values()[Ls8/c;
    .locals 1

    sget-object v0, Ls8/c;->j:[Ls8/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls8/c;

    return-object v0
.end method
