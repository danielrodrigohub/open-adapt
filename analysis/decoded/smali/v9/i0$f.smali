.class public final Lv9/i0$f;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/i0;-><init>(Lv9/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lv9/i0$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/i0;


# direct methods
.method public constructor <init>(Lv9/i0;)V
    .locals 0

    iput-object p1, p0, Lv9/i0$f;->h:Lv9/i0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv9/i0$b;"
        }
    .end annotation

    new-instance v0, Lv9/i0$b;

    iget-object v1, p0, Lv9/i0$f;->h:Lv9/i0;

    invoke-direct {v0, v1}, Lv9/i0$b;-><init>(Lv9/i0;)V

    return-object v0
.end method
