.class public final enum Lfc/e$b;
.super Ljava/lang/Enum;
.source "sessions.java"

# interfaces
.implements Lm7/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfc/e$b;",
        ">;",
        "Lm7/y$a;"
    }
.end annotation


# static fields
.field public static final enum i:Lfc/e$b;

.field public static final enum j:Lfc/e$b;

.field public static final enum k:Lfc/e$b;

.field public static final enum l:Lfc/e$b;

.field public static final synthetic m:[Lfc/e$b;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lfc/e$b;

    const-string v1, "ACTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfc/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfc/e$b;->i:Lfc/e$b;

    .line 2
    new-instance v1, Lfc/e$b;

    const-string v3, "ACTION_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lfc/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfc/e$b;->j:Lfc/e$b;

    .line 3
    new-instance v3, Lfc/e$b;

    const-string v5, "ACTION_UNLACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lfc/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lfc/e$b;->k:Lfc/e$b;

    .line 4
    new-instance v5, Lfc/e$b;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lfc/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lfc/e$b;->l:Lfc/e$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lfc/e$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lfc/e$b;->m:[Lfc/e$b;

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
    iput p3, p0, Lfc/e$b;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfc/e$b;
    .locals 1

    const-class v0, Lfc/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfc/e$b;

    return-object p0
.end method

.method public static values()[Lfc/e$b;
    .locals 1

    sget-object v0, Lfc/e$b;->m:[Lfc/e$b;

    invoke-virtual {v0}, [Lfc/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfc/e$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lfc/e$b;->l:Lfc/e$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lfc/e$b;->h:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
