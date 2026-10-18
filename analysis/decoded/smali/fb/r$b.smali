.class public final enum Lfb/r$b;
.super Ljava/lang/Enum;
.source "SessionDownload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfb/r$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Lfb/r$b;

.field public static final enum k:Lfb/r$b;

.field public static final synthetic l:[Lfb/r$b;


# instance fields
.field public final h:J

.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lfb/r$b;

    const-string v1, "SLOW"

    const/4 v2, 0x0

    const-wide/16 v3, 0x5dc

    invoke-direct {v0, v1, v2, v3, v4}, Lfb/r$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lfb/r$b;->j:Lfb/r$b;

    .line 2
    new-instance v1, Lfb/r$b;

    const-string v3, "FAST"

    const/4 v4, 0x1

    const-wide/16 v5, 0xfa

    invoke-direct {v1, v3, v4, v5, v6}, Lfb/r$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lfb/r$b;->k:Lfb/r$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lfb/r$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lfb/r$b;->l:[Lfb/r$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lfb/r$b;->h:J

    const/16 p1, 0x200

    iput p1, p0, Lfb/r$b;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfb/r$b;
    .locals 1

    const-class v0, Lfb/r$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfb/r$b;

    return-object p0
.end method

.method public static values()[Lfb/r$b;
    .locals 1

    sget-object v0, Lfb/r$b;->l:[Lfb/r$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfb/r$b;

    return-object v0
.end method
