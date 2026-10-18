.class public final enum Ly1/m0;
.super Ljava/lang/Enum;
.source "RenderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly1/m0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Ly1/m0;

.field public static final enum i:Ly1/m0;

.field public static final enum j:Ly1/m0;

.field public static final synthetic k:[Ly1/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ly1/m0;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly1/m0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/m0;->h:Ly1/m0;

    .line 2
    new-instance v1, Ly1/m0;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly1/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly1/m0;->i:Ly1/m0;

    .line 3
    new-instance v3, Ly1/m0;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly1/m0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly1/m0;->j:Ly1/m0;

    const/4 v5, 0x3

    new-array v5, v5, [Ly1/m0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Ly1/m0;->k:[Ly1/m0;

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

.method public static valueOf(Ljava/lang/String;)Ly1/m0;
    .locals 1

    const-class v0, Ly1/m0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly1/m0;

    return-object p0
.end method

.method public static values()[Ly1/m0;
    .locals 1

    sget-object v0, Ly1/m0;->k:[Ly1/m0;

    invoke-virtual {v0}, [Ly1/m0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly1/m0;

    return-object v0
.end method
