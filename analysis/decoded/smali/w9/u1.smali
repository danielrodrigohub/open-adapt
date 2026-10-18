.class public final enum Lw9/u1;
.super Ljava/lang/Enum;
.source "AdaptKitPairDevicesController.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw9/u1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Lw9/u1;

.field public static final enum k:Lw9/u1;

.field public static final enum l:Lw9/u1;

.field public static final synthetic m:[Lw9/u1;


# instance fields
.field public final h:Lfd/d;

.field public final i:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lw9/u1;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw9/u1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/u1;->j:Lw9/u1;

    .line 2
    new-instance v1, Lw9/u1;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw9/u1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw9/u1;->k:Lw9/u1;

    .line 3
    new-instance v3, Lw9/u1;

    const-string v5, "BOTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw9/u1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw9/u1;->l:Lw9/u1;

    const/4 v5, 0x3

    new-array v5, v5, [Lw9/u1;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lw9/u1;->m:[Lw9/u1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Lw9/u1$a;

    invoke-direct {p1, p0}, Lw9/u1$a;-><init>(Lw9/u1;)V

    const/4 p2, 0x1

    invoke-static {p2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lw9/u1;->h:Lfd/d;

    .line 4
    new-instance p1, Lw9/u1$b;

    invoke-direct {p1, p0}, Lw9/u1$b;-><init>(Lw9/u1;)V

    invoke-static {p2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lw9/u1;->i:Lfd/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw9/u1;
    .locals 1

    const-class v0, Lw9/u1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw9/u1;

    return-object p0
.end method

.method public static values()[Lw9/u1;
    .locals 1

    sget-object v0, Lw9/u1;->m:[Lw9/u1;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw9/u1;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lw9/u1;->i:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
