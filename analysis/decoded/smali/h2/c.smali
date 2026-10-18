.class public final enum Lh2/c;
.super Ljava/lang/Enum;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh2/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lh2/c;

.field public static final enum j:Lh2/c;

.field public static final synthetic k:[Lh2/c;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lh2/c;

    const-string v1, "JSON"

    const/4 v2, 0x0

    const-string v3, ".json"

    invoke-direct {v0, v1, v2, v3}, Lh2/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh2/c;->i:Lh2/c;

    .line 2
    new-instance v1, Lh2/c;

    const-string v3, "ZIP"

    const/4 v4, 0x1

    const-string v5, ".zip"

    invoke-direct {v1, v3, v4, v5}, Lh2/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lh2/c;->j:Lh2/c;

    const/4 v3, 0x2

    new-array v3, v3, [Lh2/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lh2/c;->k:[Lh2/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lh2/c;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh2/c;
    .locals 1

    const-class v0, Lh2/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh2/c;

    return-object p0
.end method

.method public static values()[Lh2/c;
    .locals 1

    sget-object v0, Lh2/c;->k:[Lh2/c;

    invoke-virtual {v0}, [Lh2/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh2/c;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh2/c;->h:Ljava/lang/String;

    return-object v0
.end method
