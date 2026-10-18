.class public final Lhc/h0;
.super Ljava/lang/Object;
.source "CoreRFModule.kt"


# static fields
.field public static final a:Lhc/h0;

.field public static b:Lhc/g0;

.field public static final c:Lfd/h;

.field public static d:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhc/h0;

    invoke-direct {v0}, Lhc/h0;-><init>()V

    sput-object v0, Lhc/h0;->a:Lhc/h0;

    sget-object v0, Lhc/h0$a;->h:Lhc/h0$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lhc/h0;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
