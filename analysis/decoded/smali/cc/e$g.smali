.class public final Lcc/e$g;
.super Lrd/o;
.source "OIDCRepositoryImpl.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/e;->c(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcc/e$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc/e$g;

    invoke-direct {v0}, Lcc/e$g;-><init>()V

    sput-object v0, Lcc/e$g;->h:Lcc/e$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lob/e$g;

    invoke-direct {v0}, Lob/e$g;-><init>()V

    throw v0
.end method
