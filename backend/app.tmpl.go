package backend

import (
	"context"

	"github.com/gookit/slog"
)

type App struct {
	ctx context.Context
}

func init() {
	slog.Configure(func(logger *slog.SugaredLogger) {
		f := logger.Formatter.(*slog.TextFormatter)
		f.EnableColor = true
	})
}

func NewApp() *App {
	return &App{}
}

// startup
func (a *App) Startup(ctx context.Context) {
	a.ctx = ctx
	slog.Info("Project: Startup")
}

// Shutdown
func (a *App) Shutdown(ctx context.Context) {
	a.ctx = ctx
	slog.Info("Project: Shutdown")
}

// DomReady
func (a *App) DomReady(ctx context.Context) {
	a.ctx = ctx
	slog.Info("Project: DomReady")
}