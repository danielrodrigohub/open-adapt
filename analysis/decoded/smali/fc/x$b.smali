.class public final enum Lfc/x$b;
.super Ljava/lang/Enum;
.source "sessions.java"

# interfaces
.implements Lm7/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfc/x$b;",
        ">;",
        "Lm7/y$a;"
    }
.end annotation


# static fields
.field public static final enum i:Lfc/x$b;

.field public static final enum j:Lfc/x$b;

.field public static final enum k:Lfc/x$b;

.field public static final synthetic l:[Lfc/x$b;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lfc/x$b;

    const-string v1, "MEMORY_FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfc/x$b;->i:Lfc/x$b;

    .line 2
    new-instance v1, Lfc/x$b;

    const-string v3, "LOW_BATTERY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lfc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfc/x$b;->j:Lfc/x$b;

    .line 3
    new-instance v3, Lfc/x$b;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lfc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lfc/x$b;->k:Lfc/x$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lfc/x$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lfc/x$b;->l:[Lfc/x$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lfc/x$b;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfc/x$b;
    .locals 1

    const-class v0, Lfc/x$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfc/x$b;

    return-object p0
.end method

.method public static values()[Lfc/x$b;
    .locals 1

    sget-object v0, Lfc/x$b;->l:[Lfc/x$b;

    invoke-virtual {v0}, [Lfc/x$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfc/x$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lfc/x$b;->k:Lfc/x$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lfc/x$b;->h:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
